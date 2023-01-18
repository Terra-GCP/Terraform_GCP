output "schedule_id" {
    value       = google_compute_resource_policy.TF_Backup_Schedule.id
    description = "ID of the snapshot schedule being created"
}
output "schedule_name" {
    value       = google_compute_resource_policy.TF_Backup_Schedule.name
    description = "Name of the snapshot schedule being created"
}
output "schedule_description" {
    value       = google_compute_resource_policy.TF_Backup_Schedule.description
    description = "Description of the snapshot schedule being created"
}