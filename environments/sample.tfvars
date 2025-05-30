
location    = "westus2"
course_name = "20250101-CIS100-01-Pat Smith"
instructor = {
  alias = "psmith"
  name  = "Pat Smith"
  email = "psmith@ciat.edu"
}
course_start_budget = "2025-01-01T00:00:00Z" # Must be the 1st day of the month.
course_end_date     = "2025-02-15T00:00:00Z"
budget = {
  amount     = 25.00
  time_grain = "Annually"
}
# Students must have a unique object_id. Use '<student_id>_<iteration>' as the key
students = {
  # Increase the iteration if a student needs multiple resource groups
  "00000000_001" = {
    first_name = "Student"
    last_name  = "One"
    email      = "student_one@ciat.edu"                 #<student_id>@ciat.edu
    object_id  = "00000000-0000-0000-0000-000000000001" #Azure User Object ID associated with the student
  }
}
