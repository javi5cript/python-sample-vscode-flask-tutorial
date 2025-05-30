# resource "time_static" "budget_start" {
#   rfc3339 = var.course_start_budget
# }

# resource "azurerm_monitor_action_group" "current" {
#   name                = var.course_name
#   resource_group_name = azurerm_resource_group.instructor.name
#   short_name          = "${split("-", var.course_name)[1]}-${split("-", var.course_name)[2]}-ag"
#   email_receiver {
#     name          = "sendtoadmin"
#     email_address = var.instructor.email
#   }
# }
