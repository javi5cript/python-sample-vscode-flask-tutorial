resource "azurerm_app_service_plan" "this" {
    name                = "appserviceplan-javi"
    location            = azurerm_resource_group.instructor.location
    resource_group_name = azurerm_resource_group.instructor.name
    
    sku {
        tier     = "Standard"
        size     = "S1"
        capacity = 1
    }
    
    tags = {
        environment = "dev"
    }
  
}

resource "azurerm_app_service" "this" {
    name                = "appservice-javi"
    location            = azurerm_resource_group.instructor.location
    resource_group_name = azurerm_resource_group.instructor.name
    app_service_plan_id = azurerm_app_service_plan.this.id
    
    site_config {
        always_on = true
    }
    
    tags = {
        environment = "dev"
    }
}