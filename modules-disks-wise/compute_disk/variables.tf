#..................................... Compute Disks Provisioning ......................................#

variable "resource_policies" {
    type = string
    description = "Resource Policy to be attached "
}
variable "zone" {
    type = string
    description = "Region to be used for Provisioning"
}
variable "disk_type" {
    type = string
    default = "pd-ssd"
    description = "Describes disk type to use to create the disk"
}
variable "interface" {
    type = string
    default = "SCSI"
    description = "The disk interface to use for attaching this disk; either SCSI or NVME."
}
variable "depends" {
    type = string
    description = "Explicit Dependency"
}

#................... Boot_Disk ..................#

variable "boot_disk_name" {
    type = string
    description = "Name of the boot disk"
}
variable "boot_disk_labels" {
    default = {
        prefix = "gus"
        prod = "true"
        disk = "boot"
        }
    description = "Labels to apply to the boot disk"
}
variable "boot_image" {
    type = string
    default = "rhel-cloud/rhel-7"
    description = "The image from which to initialize this disk"
}
variable "boot_disk_size" {
    type = number
    default = 20
    description = "Size of the boot persistent disk, specified in GB"
}

#................... Data_Disk ..................#

variable "data_disk_name" {
    type = string
    description = "Name of the boot disk"
}
variable "data_disk_labels" {
    type = any
    default = {
        prefix = "gus"
        prod = "true"
        disk = "data"
        }
    description = "Labels to apply to the data disk"
}
variable "data_disk_size" {
    type = number
    default = 10
    description = "Size of the data persistent disk, specified in GB"
}