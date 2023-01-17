#.................................. Backup Schedule Policy ....................................#

resource "google_compute_resource_policy" "TF_Backup_Schedule" {
  name   = var.schedule_name
  snapshot_schedule_policy {
    schedule {
        weekly_schedule {
            day_of_weeks {
                day = var.days
                start_time = "${var.hours}:${var.mins}" 
      }
    }
  }
retention_policy {
      max_retention_days = var.retention_days
      on_source_disk_delete = var.on_source_disk_delete
    }
snapshot_properties {
      labels = var.apply_to_labels
      storage_locations = var.storage_location
}
}
depends_on = [var.depends]
}