
# resource "azurerm_virtual_machine" "this" {
#   count                 = local.count
#   name                  = "${count.index}-vm"
#   location              = azurerm_resource_group.instructor.location
#   resource_group_name   = azurerm_resource_group.instructor.name
#   network_interface_ids = [azurerm_network_interface.this[count.index].id]
#   vm_size               = "Standard_DS1_v2"

#   # Uncomment this line to delete the OS disk automatically when deleting the VM
#   # delete_os_disk_on_termination = true

#   # Uncomment this line to delete the data disks automatically when deleting the VM
#   # delete_data_disks_on_termination = true
#   storage_image_reference {
#     publisher = "Canonical"
#     offer     = "UbuntuServer"
#     sku       = "18.04-LTS"
#     version   = "latest"
#   }

#   storage_os_disk {
#     name              = "${count.index}-osdisk"
#     caching           = "ReadWrite"
#     create_option     = "FromImage"
#     managed_disk_type = "Standard_LRS"
#   }
#   os_profile {
#     computer_name  = "${count.index}-vm"
#     admin_username = "testadmin"
#     admin_password = "Password1234!"
#   }

#   tags = {
#     environment = "staging"
#   }
# }

# ###### Bastion Host

# resource "azurerm_public_ip" "this" {
#   name                = "${local.prefix}-public-ip"
#   location            = azurerm_resource_group.instructor.location
#   resource_group_name = azurerm_resource_group.instructor.name
#   allocation_method   = "Static"
#   sku                 = "Standard"
# }

# resource "azurerm_bastion_host" "this" {
#   name                = "${local.prefix}-bastion-host"
#   location            = azurerm_resource_group.instructor.location
#   resource_group_name = azurerm_resource_group.instructor.name

#   ip_configuration {
#     name                 = "configuration"
#     subnet_id            = azurerm_subnet.bastion.id
#     public_ip_address_id = azurerm_public_ip.this.id
#   }
# }
