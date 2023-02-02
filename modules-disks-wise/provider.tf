#.................................... Terraform Backend ....................................#

terraform {
    backend "gcs" {
    bucket  = "os-patching-backend"
    prefix  = "tf_state/"
  }
}

#..................................... Provider Block ......................................#

provider "google" {
    #credentials = file("${var.credentials}")
    project = var.project_id
    region = var.region
    zone = var.zone
}
provider "google-beta" {
    #credentials = file("${var.credentials}") 
    project = var.project_id
    region = var.region
    zone = var.zone
}