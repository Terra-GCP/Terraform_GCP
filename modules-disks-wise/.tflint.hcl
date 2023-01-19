plugin "google" {
    enabled = true
    version = "0.22.1"
    source  = "github.com/terraform-linters/tflint-ruleset-google"
}

rule "google_compute_instance_invalid_machine_type" {
    enabled = true
}