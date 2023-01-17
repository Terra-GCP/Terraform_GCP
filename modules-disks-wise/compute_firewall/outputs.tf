/* output "firewall_name" {
  value       = google_compute_firewall.TF_Firewall.0.id
  description = "The created firewall rule resources"
}
output "firewall_rules" {
  value       = google_compute_firewall.TF_Firewall.*.self_link
  description = The created firewall rule resources"
} */