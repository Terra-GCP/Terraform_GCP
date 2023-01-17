#....................................... Firestore Provisioning ...................................#

variable "depends" {
    type = string
    description = "Explicit Dependency"
}
variable "filestore_name" {
    type = string
    description = "This prefix will be used in name for resource provisioning"
}
variable "zone" {
    type = string
    description = "Zone to to be used for filestore Provisioning"
}
variable "tier" {
    type = any
    default = "STANDARD"
    description = "The service tier of the instance. Possible values include: STANDARD, PREMIUM, BASIC_HDD, BASIC_SSD, HIGH_SCALE_SSD and ENTERPRISE"
}
variable "labels" {
    default = {
                env = "prod"
                type = "filestore"
                protocol = "nfs"
                }
    description = "Labels to be applied on VMs"
}
variable "description" {
    type = string
    default = "Filestore Instance Provisioning."
    description = "Filestore Description to be added"
}

// ....... filestore_file_shares_block ........ //

variable "share_name" {
    type = any
    default = "gcp_fs_share"
    description = "The name of the fileshare (16 characters or less)"
}
variable "capacity" {
    type = number
    default = 1024
    description = "File share capacity in GiB. This must be at least 1024 GiB for the standard tier, or 2560 GiB for the premium tier."
}

// ........ filestore_nfs_export_block ........ //

variable "ip_ranges" {
    type = list(any)
    default = ["10.0.0.0/24"]
    description = "List of either IPv4 addresses, or ranges in CIDR notation which may mount the file share."
}
variable "access_mode" {
    type = string
    default = "READ_WRITE"
    description = "Either READ_ONLY, for allowing only read requests on the exported directory, or READ_WRITE, for allowing both read and write requests. The default is READ_WRITE. Default value is READ_WRITE."
}
variable "squash_mode" {
    type = string
    default = "NO_ROOT_SQUASH"
    description = "Either NO_ROOT_SQUASH, for allowing root access on the exported directory, or ROOT_SQUASH, for not allowing root access."
}

// ......... filestore_networks_block ......... //

variable "network_name" {
  description = "The name of the GCE VPC network to which the instance is connected."
  type        = string
}
variable "modes" {
  description = "IP versions for which the instance has IP addresses assigned. Each value may be one of ADDRESS_MODE_UNSPECIFIED, MODE_IPV4, and MODE_IPV6"
  type        = list(string)
  default = ["MODE_IPV4"]
}
variable "connect_mode" {
  description = "The network connect mode of the Filestore instance. If not provided, the connect mode defaults to DIRECT_PEERING. Default value is DIRECT_PEERING. Possible values are DIRECT_PEERING and PRIVATE_SERVICE_ACCESS."
  type        = string
  default = "DIRECT_PEERING"
}
