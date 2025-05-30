# resource "azurerm_cognitive_account" "openai" {
#   name                = "openaiaccount-javi"
#   location            = "eastus2"
#   resource_group_name = azurerm_resource_group.instructor.name

#   kind     = "OpenAI"
#   sku_name = "S0"

#   tags = {
#     environment = "dev"
#   }
# }

# resource "azurerm_cognitive_deployment" "gpt4_1" {
#   name                 = "gpt-4.1"
#   cognitive_account_id = azurerm_cognitive_account.openai.id

#   model {
#     format  = "OpenAI"
#     name    = "gpt-4.1" # This is the GPT-4.1 model name in Azure
#     version = "2025-04-14"         # Version date of GPT-4.1
#   }

#   sku {
#     name     = "GlobalStandard"
#     capacity = 50
#   }
# }
