#.................................. External_IP_Address Output ..................................#

output "External_IP_Name" {
  value       = google_compute_address.TF_Static_External_IP.name
  description = "The name of the External IP resource being created"
}
output "External_IP_Address" {
  value       = google_compute_address.TF_Static_External_IP.address
  description = "The address of the External IP being created"
}
output "Address_1_Type" {
  value       = google_compute_address.TF_Static_External_IP.address_type
  description = "The address type of this IP being created"
}
output "External_IP_NW_Tier" {
  value       = google_compute_address.TF_Static_External_IP.network_tier
  description = "The network tier of the External IP being created"
}

#.................................. Internal_IP_Address Output ..................................#

output "Internal_IP_Name" {
  value       = google_compute_address.TF_Static_Intenal_IP.name
  description = "The name of the Internal IP resource being created"
}
output "Internal_IP_Address" {
  value       = google_compute_address.TF_Static_Intenal_IP.address
  description = "The address of the Internal IP being created"
}
output "Address_2_Type" {
  value       = google_compute_address.TF_Static_Intenal_IP.address_type
  description = "The address type of this IP being created"
}
output "Internal_IP_Subnet" {
  value       = google_compute_address.TF_Static_Intenal_IP.subnetwork
  description = "The subnetwork under which this IP being created"
}
