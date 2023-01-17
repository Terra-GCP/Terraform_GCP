#...................................... Backup Schedule .......................................#

variable "schedule_name" {
    type = string
    description = "Snapshot schedule name to be used while creation."
}
variable "hours" {
    type = number
    default = 15
    description = "Schedule start time to be set in terms of hour"
}
variable "mins" {
    type = number
    default = 15
    description = "Schedule start time to be set in terms of hour"
}
variable "retention_days" {
    type = number
    default  = 2
    description = "Schedule rentention policy in terms of days"
}
variable "days" {
    type = string
    default = "FRIDAY"
    description = "Scheduled day to be set in terms of week_day"
}
variable "on_source_disk_delete" {
    type = string
    default  = "KEEP_AUTO_SNAPSHOTS"
    description = "Snapshot to be kept or deleted"
}
variable "apply_to_labels" {
    default = {
                prefix = "gus"
                }
}
variable "storage_location" {
    type = list
    default = ["us-central1"]
    description = "Snapshot storing location"
}
variable "depends" {
    type = string
    description = "Explicit Dependency"
}