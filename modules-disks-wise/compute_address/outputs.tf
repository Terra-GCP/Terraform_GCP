#.................................. External_IP_Address Output ..................................#

output "External_IP" {
  value       = google_compute_address.TF_Static_External_IP.address
  description = "The External IP resource being created"
}
output "External_IP_self_link" {
  value       = google_compute_address.TF_Static_External_IP.self_link
  description = "The URI of the External IP being created"
}

#.................................. Internal_IP_Address Output ..................................#

output "Internal_IP" {
  value       = google_compute_address.TF_Static_Intenal_IP.address
  description = "The Internal IP resource being created"
}
output "Internal_IP_self_link" {
  value       = google_compute_address.TF_Static_Intenal_IP.self_link
  description = "The URI of the Internal IP being created"
}
