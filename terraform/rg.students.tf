
# module "student_names" {
#   source  = "Azure/naming/azurerm"
#   version = "0.4.2"

#   for_each = var.students

#   prefix = [var.instructor.alias, split("_", each.key)[0], var.location, "workspace", try(split("_", each.key)[1], "001")]

# }

resource "azurerm_role_assignment" "this" {
  for_each = var.students

  scope                = "/subscriptions/${data.azurerm_client_config.current.subscription_id}"
  role_definition_name = "Contributor"
  principal_id         = each.value.object_id
}

# module "student" {
#   for_each        = var.students
#   source          = "../modules/student"
#   subscription_id = data.azurerm_subscription.primary.id

#   name                            = module.student_names[each.key].resource_group.name
#   location                        = var.location
#   course_name                     = var.course_name
#   budget_start                    = var.course_start_budget
#   budget                          = var.budget
#   azurerm_monitor_action_group_id = azurerm_monitor_action_group.current.id
#   student_role_definition_id      = azurerm_role_definition.custom.role_definition_resource_id

#   tags = {
#     "instructor"        = var.instructor.name
#     "student_object_id" = each.value.object_id
#     "instructor_email"  = var.instructor.email
#     "name"              = "${each.value.first_name} ${each.value.last_name}"
#     "email"             = each.value.email
#   }
# }
