#..................................... Subnet Provisioning ....................................#

resource "google_compute_subnetwork" "TF_Subnet" {
  name                     = "${var.subnet_name}"
  ip_cidr_range            = "${var.ip_cidr_range}"
  region                   = "${var.region}"
  private_ip_google_access = "${var.private_ip_google_access}"
  network                  = "${var.network_name}"
  description              = "${var.description}"
  log_config {
    aggregation_interval = var.aggregation_interval
    flow_sampling        = var.flow_sampling
    metadata             = var.metadata
    filter_expr          = var.filter_expr
  }
  depends_on = [var.depends]
}
