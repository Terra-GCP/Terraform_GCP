#..................................... Filestore Instance Provisioning .......................................#

resource "google_filestore_instance" "TF_Filestore" {
  name  = "${var.filestore_name}"
  location = "${var.zone}"
  tier = "${var.tier}"

  file_shares {
    capacity_gb = var.capacity
    name = "${var.share_name}"
    
    nfs_export_options {
        ip_ranges = var.ip_ranges
        access_mode = var.access_mode
        squash_mode = var.squash_mode
    }
  }
  
  networks {
      network = var.network_name
      modes = var.modes
      connect_mode = var.connect_mode
  }

  labels = "${var.labels}"
  description = "${var.description}"
  depends_on = [var.depends]
}