module "naming" {
  source  = "Azure/naming/azurerm"
  version = "0.4.2"

  prefix = [var.instructor.alias, var.location, "workspace", "001"]
}

resource "azurerm_resource_group" "instructor" {
  name     = module.naming.resource_group.name
  location = var.location

  tags = local.tags
}
