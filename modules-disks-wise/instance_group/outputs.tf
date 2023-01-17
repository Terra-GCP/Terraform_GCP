output "VM_details" {
  value       = google_compute_instance.TF_VM.self_link
  description = "The URI of the VMs being created"
}
output "UMIG_Details" {
  value       = google_compute_instance_group.TF_IG.name
  description = "The URI of the UMIG being created"
}
