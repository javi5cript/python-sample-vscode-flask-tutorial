# data "azurerm_role_definition" "current" {
#   name = "Contributor"
# }

# resource "azurerm_role_definition" "custom" {
#   name        = "Student"
#   scope       = data.azurerm_subscription.primary.id
#   description = "This is a custom role that allows Students to manage their own resources, but not delete the resource group containing them."

#   permissions {
#     actions = data.azurerm_role_definition.current.permissions[0].actions
#     not_actions = concat(
#       ["Microsoft.Resources/subscriptions/resourceGroups/delete"],
#       data.azurerm_role_definition.current.permissions[0].not_actions
#     )
#     data_actions     = data.azurerm_role_definition.current.permissions[0].data_actions
#     not_data_actions = data.azurerm_role_definition.current.permissions[0].not_data_actions
#   }

#   assignable_scopes = [
#     data.azurerm_subscription.primary.id, # /subscriptions/00000000-0000-0000-0000-000000000000
#   ]
# }
