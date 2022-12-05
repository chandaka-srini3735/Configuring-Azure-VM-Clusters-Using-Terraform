location = "East US"
resource_group = {
  location = "East US"
  name     = "nsb-vault"
}
prefix          = "nsb"
vault_subnet_id = "/subscriptions/4d8e572a-3214-40e9-a26f-8f71ecd24e0d/resourceGroups/nsb-vault/providers/Microsoft.Network/virtualNetworks/nsb-vault/subnets/nsb-vault"
zones           = [1, 2, 3]
vault_cert_pem  = <<EOF
-----BEGIN CERTIFICATE-----
MIIDSzCCAjOgAwIBAgIRAJ+qG21KWHOI6BSlztEzUPEwDQYJKoZIhvcNAQELBQAw
GzEZMBcGA1UEAxMQY2EudmF1bHQubnNiLmNvbTAeFw0yMjExMDcxODI4NThaFw0y
MjEyMDcxODI4NThaMBgxFjAUBgNVBAMTDXZhdWx0Lm5zYi5jb20wggEiMA0GCSqG
SIb3DQEBAQUAA4IBDwAwggEKAoIBAQCae9eWfT8y91qcxNQz29IUGkY9IEU7AcqO
Vu/SMbfWs4m8E4Yf1dubC7/P0QV/RIs0ZxqnnrUJ1V7LqXx3tQQ6L89tE4vHNUkO
Ik0FJzLg1LjD3yST207KRT9UnOGjb7GTXKLYIPYJhTA1dMViu6O7Fv0kgGWbGwAg
Gx0F6jrD4lZGxdKK1gv1+UkpJe+LxlKjV7QjYIhwY4Rg9iRnoMur1AXqcUc5adll
/3IQfqLf8EGFA/hgS5DTNhi82xDgi6n4bXgXMR/uZzTubHEwikc03mYiiDFtlB7Q
qzoVh2QlZKdGBo0qxWq//ZfxX5NMM2bN8h/c8RchgsRhdGl6ei3rAgMBAAGjgYww
gYkwDgYDVR0PAQH/BAQDAgOoMB0GA1UdJQQWMBQGCCsGAQUFBwMCBggrBgEFBQcD
ATAMBgNVHRMBAf8EAjAAMB8GA1UdIwQYMBaAFARwIIK16gtT2iKgHd6oNByLI6ie
MCkGA1UdEQQiMCCCDXZhdWx0Lm5zYi5jb22CCWxvY2FsaG9zdIcEfwAAATANBgkq
hkiG9w0BAQsFAAOCAQEAfxAzfW/FKazMkdSV4odYJDhFukMAsXnNVOHGznzq6q0q
5AAf+Y2+2xewzWdnl3qOQlU7eao7nhQwEAFSBppAgSaakKkfB+lJPFgrc48HKqqx
enmL1XiRkFD3ctsYXq7RfXBwgdcOxvmIELsrO1/hS64pgcKCw6mZxdAeME83HG0c
BLVOVIvKE/nbzhllARuB/pYG4mnvfCWXripAwMnX1t/0HaYQpABwKApxIZOCye5u
NCJ3FmTLIwaqZyS9wFqRYYjrh5R/1R4stjzJJFYCAI0o6R309cwhbLDqIdTc6JrZ
6HDwJRfioII0ekW2qCUuHrzFIcLwsGmdi1vjNuWZLQ==
-----END CERTIFICATE-----
EOF
vault_key_pem   = <<EOF
-----BEGIN RSA PRIVATE KEY-----
MIIEowIBAAKCAQEAmnvXln0/MvdanMTUM9vSFBpGPSBFOwHKjlbv0jG31rOJvBOG
H9Xbmwu/z9EFf0SLNGcap561CdVey6l8d7UEOi/PbROLxzVJDiJNBScy4NS4w98k
k9tOykU/VJzho2+xk1yi2CD2CYUwNXTFYrujuxb9JIBlmxsAIBsdBeo6w+JWRsXS
itYL9flJKSXvi8ZSo1e0I2CIcGOEYPYkZ6DLq9QF6nFHOWnZZf9yEH6i3/BBhQP4
YEuQ0zYYvNsQ4Iup+G14FzEf7mc07mxxMIpHNN5mIogxbZQe0Ks6FYdkJWSnRgaN
KsVqv/2X8V+TTDNmzfIf3PEXIYLEYXRpenot6wIDAQABAoIBADwvGyJp0QFOFGMW
24UIkqN6SPrvY4lFfWBOxkehTvm6IGLBSHOGoXOZ9DRGPloCnijgMiYzUlxuX+wA
L5mDUA5LKghYoRAO1lNHUbI8PzoQJZtJh7qCqgNrTuzr4YwGq6u5X0fML44t8UYi
I/P/Hh55Kk3aJ7txnW7koT34rsQ5AlLVcDDiRdcnOXe1FDX5a5XosIid9rQgisfo
wCh6p5LNo23QkbhDGAt4XZlXv/KOa9dUColqTebs8XlWedZKl3Zy3nB1aaZA77gQ
I4j2cA1LfExtxrLilw77YbShoQ0peHvUn2e7i50ImEl47tsQP9sO7/XWNinx0itQ
pR28DwECgYEAwHZEtvHupo0yQzifRRRTRxiczM0KhmyPsdV+TIZr4wKVwfZV2fY5
GDGORkmVaMKXd6YHgSaM73Equ9NK2/y+/JR0Xaq9+RGeZjCK8sSCc2AJgixAsLGp
ZrqJU+9IcUS1DHoUVoXbde/JtODVQM9sZvuB/XsUCjLzGw2pgzY+JaECgYEAzXvh
xjowCrbQZuND7e9uiZp9PEUQq6UF7SvHVXDhU4fIP+iEMJKsZmsF4BQuzIU9Nhnd
H7LRXfOaQi20blrU12lnd62VlQnWlZ64MCnBOtPfqcSv1CYlamJj/Nl9GNSg8wSb
B445X7D/ahUj7Ux1O6C30IRfmObw6yu88CYkkAsCgYEArouUDgaj1VDAgM5dQ50H
WbcsnWBnZzoVp8ZjYKuYNK0nfF0XxzDS3uoyifQ6GGRCUjS1IaAAuTb89pLNlW1H
GHLahghPeg9MhIkJutoVJOW4OeJAWP8HDy+lVAXywSb6u3IL99w2CGOLnws43CpB
ubPnVCfHKOjEKYjeby1Gd4ECgYAD9CdC9imoex4FbMgI0vuQgD16pGWOt+0mRBpg
xXxAbDNpL2MjwB67FcIWLq072DB2UwcTLhCjOyWzskdvfCXuQyPvhJKFPJw5YsVu
f88s/5ilHpi3f0hnBJ+h5NloWecC5grJmW33LmOrud5oGXmD/TKsO2/PdFocXEoV
YNaBQwKBgC22ibPE7BXOSrCozZhxYTyOvLQp3ACL2otk/tYfKxjHSMZxNb9TJTti
hxqQeef9C2dD5aam3prxnlBldrLH6/gwd0Uu7Yz7r5zPdBR90yR0gcALv/zFagks
yYlQzNBOMlRQPg7E2DHovQkHj/3jObfmUWXbMimXC7pGRU4FoYY5
-----END RSA PRIVATE KEY-----
EOF
vault_ca_pem    = <<EOF
-----BEGIN CERTIFICATE-----
MIIDAjCCAeqgAwIBAgIQBOrHoSYLWdr1u2aWb2yJQzANBgkqhkiG9w0BAQsFADAb
MRkwFwYDVQQDExBjYS52YXVsdC5uc2IuY29tMB4XDTIyMTEwODE2MjYxNFoXDTIy
MTIwODE2MjYxNFowGzEZMBcGA1UEAxMQY2EudmF1bHQubnNiLmNvbTCCASIwDQYJ
KoZIhvcNAQEBBQADggEPADCCAQoCggEBALoXzCm5lN43NS8SHp6i/3/j1yQp69b+
2hjMa1/DScqxeVCcZ2+CyT06re6aqOOkl4ZdyA0EaZd5nU+YOHlZy/tz1CG+z8vW
YGYl3pcOej6JeCa19khv0/yPQl6lpQJW04O6nw0gBzm7/GFUN/U2b0f8YZKR4w5o
giltRYR4CdBPn0DyPrLk3b4kX4aJU+L0Whp1ySuwk9IRU1ipvTGv0h5onPQetuKI
Nr4JqEb1i2qSMwazAAoGN2K1fhoozIyn61tgGVohBSTvKBYVxmFK+KM87EnG9LpF
2CHCM9A9Qtn+f4MsdPdTDbcOStbLMFFsNCIM4do9H3IhrBrbyGHKRzsCAwEAAaNC
MEAwDgYDVR0PAQH/BAQDAgEGMA8GA1UdEwEB/wQFMAMBAf8wHQYDVR0OBBYEFARw
IIK16gtT2iKgHd6oNByLI6ieMA0GCSqGSIb3DQEBCwUAA4IBAQAIxDlIzAYElFjn
oaaZPDxlQ4XezsFb+uXp2cBHRvRwavCYZ4dlFmbQHWubERZbIpNIzPHmnTClo8OP
cXKz19lEuX80PzERInoKjiqL767Cjchgv8lvQ1MajINFbEDB82g7SwuQzKb4mQ29
NNmrhbL8UwMWDzXiq+Rx1Xzpe0KpDF8YuI3v65JSYgtbqu7JAyVGYjRbRUmqZ7P5
9GTqse9cX+MyVj2Yy3vQwsJB8NPL/gQgDBUKJ6iytVHpISwN5VoA6hsgvUQJttG2
j4NOOLKd9hDw2ATVUU4ZPlIGsWl47t4mcQSb0WQ9q0C/462oGaRj40STGwPFshP1
LbmMYk3b
-----END CERTIFICATE-----
EOF
vault_san_name  = "vault.nsb.com"