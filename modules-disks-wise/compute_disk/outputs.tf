#..................................... Boot Disk Output ......................................#

output "Boot_Disk_Name" {
  value       = google_compute_disk.boot_disk.name
  description = "The Name of the boot disk being created"
}
output "Boot_Disk_Labels" {
  value       = google_compute_disk.boot_disk.labels
  description = "The Label of the boot disk being created"
}
output "Boot_Disk_Size" {
  value       = google_compute_disk.boot_disk.size
  description = "The Size of the boot disk being created"
}
output "Boot_Disk_Interface" {
  value       = google_compute_disk.boot_disk.interface
  description = "The Interface type of the boot disk being created"
}
output "Boot_Disk_Type" {
  value       = google_compute_disk.boot_disk.type
  description = "The type of the boot disk being created"
}

#..................................... Data Disk Output ......................................#

output "Data_Disk_Name" {
  value       = google_compute_disk.data_disk.name
  description = "The Name of the data disk being created"
}
output "Data_Disk_Labels" {
  value       = google_compute_disk.data_disk.labels
  description = "The Label of the data disk being created"
}
output "Data_Disk_Size" {
  value       = google_compute_disk.data_disk.size
  description = "The Size of the data disk being created"
}
output "Data_Disk_Interface" {
  value       = google_compute_disk.data_disk.interface
  description = "The Interface type of the data disk being created"
}
output "Data_Disk_Type" {
  value       = google_compute_disk.data_disk.type
  description = "The type of the data disk being created"
}