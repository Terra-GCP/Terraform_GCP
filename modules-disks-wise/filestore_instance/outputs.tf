output "filestore_name" {
  value       = google_filestore_instance.TF_Filestore.name
  description = "The URI of the VMs being created"
}
output "filestore_id" {
  value       = google_filestore_instance.TF_Filestore.id
  description = "The URI of the UMIG being created"
}
