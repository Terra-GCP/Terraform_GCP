#...................................... OS Patch Config .......................................#

variable "patch_id" {
}
variable "labels" {
    default = {
                lin-patch = "true"
                }
}
variable "reboot_config" {
    default = "ALWAYS"
}
variable "id" {
  default = "Asia/Kolkata"
}
variable "hours" {
    default = 19
}
variable "mins" {
    default = 45
}
variable "week_ordinal" {
    type = number
    default = 1
}
variable "day_of_week" {
    type = string
    default = "FRIDAY" 
}
variable "depends" {
    description = "Explicit Dependency"
}