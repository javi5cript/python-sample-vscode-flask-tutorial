
resource "azurerm_network_watcher" "this" {
  name                = "production-nwwatcher"
  location            = azurerm_resource_group.instructor.location
  resource_group_name = azurerm_resource_group.instructor.name
  tags                = local.tags
}

# resource "azurerm_virtual_network" "this" {
#   name                = "javiertest-network"
#   location            = azurerm_resource_group.instructor.location
#   resource_group_name = azurerm_resource_group.instructor.name
#   address_space       = ["10.0.0.0/16"]

#   tags = local.tags
# }


# resource "azurerm_subnet" "main" {
#   name                 = "main"
#   resource_group_name  = azurerm_resource_group.instructor.name
#   virtual_network_name = azurerm_virtual_network.this.name
#   address_prefixes     = ["10.0.1.0/24"]

# }

# resource "azurerm_subnet" "bastion" {
#   name                 = "AzureBastionSubnet"
#   resource_group_name  = azurerm_resource_group.instructor.name
#   virtual_network_name = azurerm_virtual_network.this.name
#   address_prefixes     = ["10.0.2.0/24"]

# }

# locals {
#   prefix = "jcevallos-vm"
#   count  = 2
# }

# resource "azurerm_network_interface" "this" {
#   count               = local.count
#   name                = "${count.index}-nic"
#   location            = azurerm_resource_group.instructor.location
#   resource_group_name = azurerm_resource_group.instructor.name

#   ip_configuration {
#     name                          = "testconfiguration1"
#     subnet_id                     = azurerm_subnet.main.id
#     private_ip_address_allocation = "Dynamic"
#   }
# }
