output "subnets" {
  value       = google_compute_subnetwork.TF_Subnet
  description = "The created subnet resources"
}
output "subnet_name" {
  value       = google_compute_subnetwork.TF_Subnet.name
  description = "The name of the Subnet being created"
}
output "subnetwork_id" {
  value       = google_compute_subnetwork.TF_Subnet.id
  description = "The ID of the Subnet being created"
}

output "subnetwork_self_link" {
  value       = google_compute_subnetwork.TF_Subnet.self_link
  description = "The URI of the Subnet being created"
}