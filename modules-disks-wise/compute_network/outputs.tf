output "network_id" {
  value       = google_compute_network.TF_Network.id
  description = "The id of the VPC being created"
}
output "network_name" {
  value       = google_compute_network.TF_Network.name
  description = "The name of the VPC being created"
}
output "network_description" {
  value       = google_compute_network.TF_Network.description
  description = "The description of the VPC being created"
}

output "network_routing_mode" {
  value       = google_compute_network.TF_Network.routing_mode
  description = "The routing mode of the VPC being created"
}