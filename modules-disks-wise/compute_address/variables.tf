#.................................. External_IP_Address Provisioning ..................................#

variable "static_external_ip_name" {
  type        = string
  description = "A list of External IP addresses resource names to create."
  default = "static-external-ip"
}
variable "ext_address_type" {
    default = "EXTERNAL"
    description = "Type of IP address to create."
}
variable "depends" {
    description = "Explicit Dependency"
}

#.................................. Internal_IP_Address Provisioning ..................................#

variable "static_internal_ip_name" {
  type        = string
  description = "A list of Internal IP addresses resource names to create."
  default = "static-internal-ip"
}
variable "subnet_name" {
    type        = string
    description = "The name of the subnetwork being created"
}
variable "int_address_type" {
    default = "INTERNAL"
    description = "Type of IP address to create."
}
variable "network_tier" {
    type = string
    default = "PREMIUM"
    description = "Type of network tier for the IP to create."
}
