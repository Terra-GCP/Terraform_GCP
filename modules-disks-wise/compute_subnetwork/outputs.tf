output "subnetwork_name" {
  value       = google_compute_subnetwork.TF_Subnet.name
  description = "The name of the Subnet being created"
}
output "subnetwork_description" {
  value       = google_compute_subnetwork.TF_Subnet.description
  description = "The description of the Subnet being created"
}
output "subnetwork_region" {
  value       = google_compute_subnetwork.TF_Subnet.region
  description = "The region of the Subnet being created"
}
