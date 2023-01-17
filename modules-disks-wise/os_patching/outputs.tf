output "os-patch-start-time" {
    value = google_os_config_patch_deployment.TF_OS_Patch.create_time
}
output "os-patch-duration" {
    value = google_os_config_patch_deployment.TF_OS_Patch.duration
}
output "os-patch-next-schedule" {
    value = google_os_config_patch_deployment.TF_OS_Patch.last_execute_time
}
output "os-patch-update-time" {
    value = google_os_config_patch_deployment.TF_OS_Patch.update_time
}