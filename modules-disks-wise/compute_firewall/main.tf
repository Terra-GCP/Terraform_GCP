#.................................... Firewall Provisioning ....................................#

resource "google_compute_firewall" "TF_Firewall" {
  name    = "${var.firewall_name}"
  network = "${var.network_name}"
  direction = "${var.direction}"
  priority = var.priority
  source_ranges = var.source_ranges
  destination_ranges = "${var.cidr_range}"
  disabled = var.disabled
  target_tags = "${var.target_tags}"

  for_each = {
    "tcp" = var.ports
  }
  allow {
    protocol = each.key
    ports    = each.value
  }
  allow {
    protocol = var.protocol
  }
  log_config {
      metadata = var.metadata
    }
    depends_on = [var.depends]
}
