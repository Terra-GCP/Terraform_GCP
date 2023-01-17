output "schedule_name" {
    value       = google_compute_resource_policy.TF_Backup_Schedule.name
    description = "name of the snapshot schedule being created"
}
output "schedule_id" {
    value       = google_compute_resource_policy.TF_Backup_Schedule.id
    description = "name of the snapshot schedule being created"
}