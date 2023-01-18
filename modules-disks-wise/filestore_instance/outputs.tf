output "filestore_name" {
  value       = google_filestore_instance.TF_Filestore.name
  description = "The Name of the filestore instance being created"
}
output "filestore_tier" {
  value       = google_filestore_instance.TF_Filestore.tier
  description = "The tier type of the filestore being created"
}
output "fileshare_name" {
  value       = google_filestore_instance.TF_Filestore.file_shares[0].name
  description = "The name of the fileshare being created"
}
output "fileshare_capacity" {
  value       = google_filestore_instance.TF_Filestore.file_shares[0].capacity_gb
  description = "The capacity of the fileshare being created"
}
output "fileshare_network" {
  value       = google_filestore_instance.TF_Filestore.networks[0].ip_addresses
  description = "The network ip ranges of the fileshare being created"
}
output "fileshare_mode" {
  value       = google_filestore_instance.TF_Filestore.networks[0].modes
  description = "The mode of the fileshare being created"
}
