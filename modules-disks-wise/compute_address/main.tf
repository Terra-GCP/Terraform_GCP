#.................................. External_IP_Address Provisioning ..................................#

resource "google_compute_address" "TF_Static_External_IP" {
  name = "${var.static_external_ip_name}"
  address_type = "${var.ext_address_type}"
  network_tier = "${var.network_tier}"
  depends_on = [var.depends]
}

#.................................. Internal_IP_Address Provisioning ..................................#

resource "google_compute_address" "TF_Static_Intenal_IP" {
  name         = "${var.static_internal_ip_name}"
  subnetwork   = "${var.subnet_name}"
  address_type = "${var.int_address_type}"
  depends_on = [var.depends]
}