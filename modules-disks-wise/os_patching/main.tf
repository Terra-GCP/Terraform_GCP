#...................................... Backup Schedule Policy .......................................#

resource "google_os_config_patch_deployment" "TF_OS_Patch" {
  patch_deployment_id = var.patch_id
  instance_filter {
      group_labels {
        labels = var.labels
      }
  }
      patch_config {
        reboot_config = var.reboot_config
        yum {
          security = true
          minimal = true
          excludes = ["bash"]
        }
    }
    
  recurring_schedule {
    time_zone {
      id = var.id
    }

    time_of_day {
      hours = var.hours
      minutes = var.mins
      seconds = 00
      nanos = 00
    }
    monthly {
      week_day_of_month {
        week_ordinal = var.week_ordinal
        day_of_week  = var.day_of_week
    }
}
}
depends_on = [var.depends]
}