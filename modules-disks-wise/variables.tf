#..................................... Provider Block ......................................#

variable "credentials" {
    type = any
    default =  "application_default_credentials.json"
    description = "Service Account Credentials to be used for interaction"
}
variable "project_id" {
    type = any
    default =  "neural-foundry-368906"
    description = "Project ID to be used for Provisioning"
    validation {
      condition = length(var.project_id) >= 6 && length(var.project_id) <=32
      error_message = "The Project ID to be used must be 6 to 30 characters in length."
    }
}
variable "region" {
    default = "us-central1"
    type = string
    description = "Region to be used for Provisioning"
}
variable "zone" {
    type = string
    default = "us-central1-c"
    description = "Zone to to be used for Provisioning"
}
variable "prefix" {
    type = string
    default = "gus-prd"
    description = "This prefix will be used in name for resource provisioning"
}