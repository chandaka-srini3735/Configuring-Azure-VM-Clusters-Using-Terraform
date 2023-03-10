# Application security group
resource "azurerm_application_security_group" "main" {
  name                = "${var.prefix}-vmss-asg"
  resource_group_name = data.azurerm_resource_group.main.name
  location            = data.azurerm_resource_group.main.location
}

# Network security group
resource "azurerm_network_security_group" "nginx" {
  name                = "${var.prefix}-nginx"
  location            = data.azurerm_resource_group.main.location
  resource_group_name = data.azurerm_resource_group.main.name
}

# Network security rules
resource "azurerm_network_security_rule" "web_fe" {
  name                        = "${var.prefix}-web-fe"
  description                 = "Allow from the App Gateway to the web servers"
  resource_group_name         = data.azurerm_resource_group.main.name
  network_security_group_name = azurerm_network_security_group.nginx.name
  priority                    = 1001
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  destination_port_range      = 80
  source_port_range           = "*"

  destination_application_security_group_ids = [azurerm_application_security_group.main.id]
  source_address_prefix                      = data.azurerm_subnet.app_gateway.address_prefixes[0]
}

locals {
  nfs_mount_address = azurerm_private_endpoint.main.private_dns_zone_configs[0].record_sets[0].fqdn
}

resource "azurerm_linux_virtual_machine_scale_set" "main" {
  resource_group_name             = data.azurerm_resource_group.main.name
  location                        = data.azurerm_resource_group.main.location
  name                            = "${var.prefix}-vmss"
  sku                             = var.vmss_sku
  instances                       = var.vmss_instances
  admin_username                  = var.vmss_admin_username
  disable_password_authentication = true

  admin_ssh_key {
    username   = var.vmss_admin_username
    public_key = var.vmss_admin_ssh_key
  }

  source_image_reference {
    publisher = var.vmss_source_image.publisher
    offer     = var.vmss_source_image.offer
    sku       = var.vmss_source_image.sku
    version   = var.vmss_source_image.version
  }

  os_disk {
    storage_account_type = var.vmss_os_disk_storage_account_type
    caching              = var.vmss_os_disk_caching
  }

  zones = var.vmss_zones

  network_interface {
    name                      = "${var.prefix}-vmss-nic"
    primary                   = true
    network_security_group_id = azurerm_network_security_group.nginx.id

    ip_configuration {
      name                                         = "${var.prefix}-vmss-ip-config"
      primary                                      = true
      subnet_id                                    = var.vmss_subnet_id
      application_gateway_backend_address_pool_ids = [tolist(azurerm_application_gateway.main.backend_address_pool)[0].id]
      application_security_group_ids               = [azurerm_application_security_group.main.id]
    }
  }

}

resource "azurerm_virtual_machine_scale_set_extension" "nginx_deploy" {
  auto_upgrade_minor_version   = true
  name                         = "${var.prefix}-nginx-deploy"
  publisher                    = "Microsoft.Azure.Extensions"
  type                         = "CustomScript"
  type_handler_version         = "2.1"
  virtual_machine_scale_set_id = azurerm_linux_virtual_machine_scale_set.main.id

  settings = jsonencode({
    fileUris = [
      "https://raw.githubusercontent.com/MicrosoftDocs/mslearn-welcome-to-azure/master/configure-nginx.sh"
    ]
    commandToExecute = "./configure-nginx.sh ${local.nfs_mount_address}"
  })
}