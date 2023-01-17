variable "firewall_name" {
    type = string
    description = "The name of the Firewall rule being created"
}
variable "network_name" {
  type        = string
  description = "The name of the network where Firewall rule will be created"
}
variable "direction" {
    default = "INGRESS"
    description = "The direction for which the Firewall rule would be created"
}
variable "priority" {
    default = null
    description = "The priority of the Firewall rule"
}
variable "source_ranges" {
    type = list(any)
    default = ["0.0.0.0/0"]
    description = "The source range of the Firewall rule"
}
variable "cidr_range" {
    type = any
    default = ["10.0.0.0/26"]
}
variable "disabled" {
    type = bool
    default = false
}
variable "target_tags" {
    type = any
    default = ["fw-port-access"]
}
variable "ports" {
    type = list(any)
    default = ["22", "80", "3389"]
    description = "These ports number will be opened"
    }
variable "protocol" {
    default = "icmp"
    description = "This is the protocol which allow connection b/w VMs"
}
variable "metadata" {
    default = "INCLUDE_ALL_METADATA"
    description = "This field is for firewall logs"
}
variable "depends" {
    description = "Explicit Dependency"
}