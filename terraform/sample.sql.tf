
# resource "azurerm_mssql_server" "this" {
#   name                         = "javimssqlserver"
#   resource_group_name          = azurerm_resource_group.instructor.name
#   location                     = azurerm_resource_group.instructor.location
#   version                      = "12.0"
#   administrator_login          = "missadministrator"
#   administrator_login_password = "Password1234!"
#   minimum_tls_version          = "1.2"

#   tags = {
#     environment = "production"
#   }
# }

# resource "azurerm_mssql_database" "this" {
#   name      = "javimssqlserverdb"
#   server_id = azurerm_mssql_server.this.id
#   sku_name  = "S0"

#   tags = {
#     environment = "production"
#   }
# }
