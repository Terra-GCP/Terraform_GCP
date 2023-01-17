#................................... Subnet Provisioning ...................................#

variable "subnet_name" {
    type        = string
    description = "The name of the subnetwork being created"
}
variable "ip_cidr_range" {
    type = any
    default = "10.0.0.0/26"
}
variable "region" {
    type        = string
    description = "The region under which subnet to be created"
}
variable "private_ip_google_access" {
    type = bool
    default = false
}
variable "network_name" {
  description = "The name of the network where subnets will be created"
  type        = string
}
variable "description" {
  type        = string
  default = "This is the custom subnetwork to be used for resource provisioning"
}
variable "aggregation_interval" {
    type        = string
    default = "INTERVAL_1_MIN"
}
variable "flow_sampling" {
    default = "0.5"
}
variable "metadata" {
    default = "INCLUDE_ALL_METADATA"
}
variable "filter_expr" {
    default = true
}
variable "depends" {
    description = "Explicit Dependency"
}