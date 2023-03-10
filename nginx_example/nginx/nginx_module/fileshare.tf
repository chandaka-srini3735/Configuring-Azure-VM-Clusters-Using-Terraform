resource "azurerm_storage_account" "main" {
  name                          = "${var.prefix}webstorage42"
  resource_group_name           = data.azurerm_resource_group.main.name
  location                      = data.azurerm_resource_group.main.location
  account_tier                  = "Premium" # This is required for NFS shares
  account_replication_type      = "LRS"
  account_kind                  = "FileStorage"
  public_network_access_enabled = true  # Should be private for security
  enable_https_traffic_only     = false # Required for NFS shares with Private Endpoints
}

resource "azurerm_storage_share" "main" {
  name                 = "webshare"
  storage_account_name = azurerm_storage_account.main.name
  enabled_protocol     = "NFS"
  quota                = 100 # Minimum is 100GB for Premium storage
}

# Optional file resource to test web servers
resource "azurerm_storage_share_file" "main" {
  count            = var.index_file != null ? 1 : 0
  name             = "index.html"
  storage_share_id = azurerm_storage_share.main.id
  source           = var.index_file
}

resource "azurerm_storage_account_network_rules" "main" {
  storage_account_id = azurerm_storage_account.main.id
  default_action     = "Deny"
  private_link_access {
    endpoint_resource_id = azurerm_private_endpoint.main.id
  }
  ip_rules = ["100.19.93.30"]
}

resource "azurerm_private_dns_zone" "main" {
  name                = "privatelink.file.core.windows.net"
  resource_group_name = data.azurerm_resource_group.main.name
}

resource "azurerm_private_dns_zone_virtual_network_link" "main" {
  name                  = "fileshare"
  resource_group_name   = data.azurerm_resource_group.main.name
  private_dns_zone_name = azurerm_private_dns_zone.main.name
  virtual_network_id    = data.azurerm_virtual_network.main.id
}

resource "azurerm_private_endpoint" "main" {
  name                = "${var.prefix}-webshare-endpoint"
  location            = data.azurerm_resource_group.main.location
  resource_group_name = data.azurerm_resource_group.main.name
  subnet_id           = var.vmss_subnet_id

  private_dns_zone_group {
    name                 = "webshare"
    private_dns_zone_ids = [azurerm_private_dns_zone.main.id]
  }

  private_service_connection {
    name                           = "webshare"
    is_manual_connection           = false
    private_connection_resource_id = azurerm_storage_account.main.id
    subresource_names              = ["file"]
  }
}