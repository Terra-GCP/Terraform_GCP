#................................. Service Account Details ....................................#

data "google_service_account" "TF_Service_Account" {
  account_id = var.sa_id
  depends_on = [var.depends]
}

#..................................... VM Provisioning .......................................#

resource "google_compute_instance" "TF_VM" {
  name  = "${var.vm_name}"
  zone = "${var.zone}"
  machine_type = "${var.machine_type}"
  tags = "${var.tags}"
  labels = "${var.labels}"
  can_ip_forward = var.can_ip_forward
  description = "${var.description}"
  deletion_protection = var.deletion_protection
  hostname = "${var.hostname}"
  allow_stopping_for_update = var.update_properties
  metadata_startup_script = var.startup_script
  enable_display = var.enable_display

  boot_disk {
      source = var.boot_disk_source
      auto_delete = var.auto_delete
      mode = var.mode
  }

  attached_disk {
      source = var.data_disk_source
      mode = var.mode
  }

  network_interface {
    network = var.network_name
    subnetwork = var.subnet_name
    network_ip = var.network_ip
    access_config {
      nat_ip = var.nat_ip
    }
  }

  scheduling {
      preemptible = var.preemptible
      automatic_restart   = var.auto_restart
      on_host_maintenance = var.on_host_maintenance
  }

  shielded_instance_config {
      enable_secure_boot = var.secure_boot
      enable_vtpm = var.vtpm
      enable_integrity_monitoring = var.integrity_monitoring 
  }

  confidential_instance_config {
    enable_confidential_compute = var.confidential__mode
  }

  lifecycle {
    create_before_destroy = false
  }

  metadata = {
      "${var.key_1}" = "${var.key_1_value}"
      "${var.key_2}" = "${var.key_2_value}"
      "${var.key_3}" = "${var.user}:${file(var.public_key)}"
  }
  
  service_account {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    email  = data.google_service_account.TF_Service_Account.email
    scopes = [var.scopes]
  }
  depends_on = [data.google_service_account.TF_Service_Account]
}

#...................................... Instance Group ........................................#

  resource "google_compute_instance_group" "TF_IG" {
    name        = var.ig_name
    network = var.network_name
    instances = [google_compute_instance.TF_VM.id]
    description = "Instance Group containing all the VM Provisioned"
    depends_on = [google_compute_instance.TF_VM]
  }