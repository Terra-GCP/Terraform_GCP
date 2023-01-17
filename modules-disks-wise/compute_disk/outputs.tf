#..................................... Boot Disk Output ......................................#

output "Boot_Disk_Details" {
  value       = google_compute_disk.boot_disk.self_link
  description = "The URI of the VMs being created"
}
output "Boot_Disk_Name" {
  value       = google_compute_disk.boot_disk.name
  description = "The URI of the VMs being created"
}

#..................................... Data Disk Output ......................................#

output "Data_Disk_Details" {
  value       = google_compute_disk.data_disk.self_link
  description = "The URI of the VMs being created"
}
output "Data_Disk_Name" {
  value       = google_compute_disk.data_disk.name
  description = "The URI of the VMs being created"
}