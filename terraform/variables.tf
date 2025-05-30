variable "subscription_id" {
  type = string
}

variable "location" {
  default = "westus2"
}

variable "instructor" {
  type = object({
    name  = string
    email = string
    alias = string
  })

}

variable "students" {
  type = map(object({
    first_name = string
    last_name  = string
    email      = string
    object_id  = string
  }))
  default = {}
}

variable "student_role_definition_name" {
  type    = string
  default = "Student"
}

variable "course_name" {
  type = string
}

variable "course_start_budget" {
  type        = string
  description = "YYYY-MM-DDTHH:MM:SSZ"
}

variable "budget" {
  type = object({
    amount     = number
    time_grain = string
  })
}

variable "course_end_date" {
  type = string

}

locals {
  tags = {
    "instructor" = var.instructor.name
    "name"       = var.instructor.name
    "email"      = var.instructor.email
  }
}
