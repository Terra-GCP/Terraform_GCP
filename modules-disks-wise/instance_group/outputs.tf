output "VM_Name" {
  value       = google_compute_instance.TF_VM.name
  description = "The Name of the VM being created"
}
output "VM_Name_Internal_IP" {
  value       = google_compute_instance.TF_VM.network_interface[0].network_ip
  description = "The Internal IP of the VM being created"
}
output "VM_Name_External_IP" {
  value       = google_compute_instance.TF_VM.network_interface[0].access_config[0].nat_ip
  description = "The Internal IP of the VM being created"
}
output "VM_Machine_Family" {
  value       = google_compute_instance.TF_VM.machine_type
  description = "The machine family of the VM being created"
}
output "VM_Status" {
  value       = google_compute_instance.TF_VM.desired_status
  description = "The desired status of the VM being created"
}
output "VM_Hostname" {
  value       = google_compute_instance.TF_VM.hostname
  description = "The HostName of the VM being created"
}
output "VM_Labels" {
  value       = google_compute_instance.TF_VM.labels
  description = "The labels of the VM being created"
}
output "VM_Maintenance" {
  value       = google_compute_instance.TF_VM.scheduling.*.on_host_maintenance
  description = "The On-Host-Maintenance status of the VM being created"
}
/* output "VM_Service_Account" {
  value       = google_compute_instance.TF_VM.service_account
  description = "The service being used for the VM"
} */
output "VM_Confidential_Mode" {
  value       = google_compute_instance.TF_VM.confidential_instance_config.*.enable_confidential_compute
  description = "The Confidential Mode status of the VM"
}

#....................................... UMIG Instance Output .....................................#

output "UMIG_Name" {
  value       = google_compute_instance_group.TF_IG.name
  description = "The Name of the UMIG being created"
}
/* output "UMIG_Instances" {
  value       = google_compute_instance_group.TF_IG.instances
  description = "The Name of the Instances being created under UMIG"
} */
