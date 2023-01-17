#...................................... VPC Provisioning ...................................#

variable "network_name" {
  description = "The name of the network being created"
  type        = string
}
variable "auto_create_subnetworks" {
    type    =  bool
    default = "false"
    description = "When set to true, the network is created in 'auto subnet mode' and it will create a subnet for each region automatically across the 10.128.0.0/9 address range. When set to false, the network is created in 'custom subnet mode' so the user can explicitly connect subnetwork resources."
}
variable "routing_mode" {
  type        = string
  default     = "GLOBAL"
  description = "The network routing mode (default 'GLOBAL')"
}
variable "project_id" {
    type = string
    description = "Project ID to be used for network Provisioning"
    validation {
      condition = length(var.project_id) >= 6 && length(var.project_id) <=32
      error_message = "The Project ID to be used must be 6 to 30 characters in length."
    }
}
variable "delete_default_routes_on_create" {
  type        = bool
  description = "If set, ensure that all routes within the network specified whose names begin with 'default-route' and with a next hop of 'default-internet-gateway' are deleted"
  default     = false
}
variable "mtu" {
  type        = number
  description = "The network MTU (If set to 0, meaning MTU is unset - defaults to '1460'). Recommended values: 1460 (default for historic reasons), 1500 (Internet default), or 8896 (for Jumbo packets). Allowed are all values in the range 1300 to 8896, inclusively."
  default     = 0
}
variable "description" {
  type        = string
  default = "This is the custom VPC to be used for resource provisioning"
}
