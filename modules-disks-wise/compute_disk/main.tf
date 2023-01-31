#..................................... Boot Disk Provisioning ......................................#

resource "google_compute_disk" "boot_disk" {
    provider = google-beta
    name = "${var.boot_disk_name}"
    zone = "${var.zone}"
    #checkov:skip=CKV_GCP_37:Disks doesn't require keys as this is testing only
    type = "${var.disk_type}"
    labels = "${var.boot_disk_labels}"
    size  = "${var.boot_disk_size}"
    image = var.boot_image
    resource_policies = ["${var.resource_policies}"]
    depends_on = [var.depends]
}

#..................................... Data Disk Provisioning ......................................#

resource "google_compute_disk" "data_disk" {
    provider = google-beta
    name = "${var.data_disk_name}"
    zone = "${var.zone}"
    #checkov:skip=CKV_GCP_37:Disks doesn't require keys as this is testing only
    type = "${var.disk_type}" 
    labels = "${var.data_disk_labels}"
    size  = "${var.data_disk_size}"
    resource_policies = ["${var.resource_policies}"]
    depends_on = [google_compute_disk.boot_disk]
}