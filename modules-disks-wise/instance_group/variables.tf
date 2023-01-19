#................................... Service Account Details ....................................#

variable "sa_id" {
    type = any
    default = "*-compute@developer.gserviceaccount.com"
    description = "Fetch name of Compute Engine Default Service Account"
}
variable "scopes" {
    type = any
    default = "cloud-platform"
    description = "Service Account scope to be applied for VM"
}
variable "depends" {
    type = string
    description = "Explicit Dependency"
}

#.................................. Secret Manager Data Block ..................................#

variable "secret_name_key" {
    type = string
    default = "ssh-user"
}
variable "secret_name_value" {
    type = string
    default = "ssh-keys"
}
variable "secret_version" {
    type = string
    default = "1"
}

#.......................................Instance Provisioning ...................................#

variable "vm_name" {
    type = string
    description = "This namex will be used for VM instance provisioning"
}
variable "zone" {
    type = string
    default = "us-central1-c"
    description = "Zone to to be used for Provisioning"
}
variable "machine_type" {
    type = any
    default = "n6-standard-1"
    description = "Machine Type family to be used for instance provisioning"
}
variable "tags" {
    default = ["fw-port-access"]
    description = "Firewall tag to be used for VMs"
}
variable "labels" {
    default = {
                prod = "true"
                group = "group-1"
                lin-patch = "true"
                }
    description = "Labels to be applied on VMs"
}
variable "can_ip_forward" {
    type = bool
    default = false
    description = "IP Forward option to be used or not"
}
variable "description" {
    type = string
    default = "VM provisioning"
    description = "VM Description to be added"
}
variable "deletion_protection" {
    type = bool
    default = false
    description = "Enable/Disable deletion protection on the instance"
}
variable "hostname" {
    type = string
    description = "A custom hostname for the instance"
}
variable "update_properties" {
    type = bool
    default = false
    description = " Allow/Deny Terraform to stop the instance to update its properties"
}
variable "startup_script" {
    type = string
    sensitive = true
    default = "sudo yum -y install google-osconfig-agent"
    description = "Script to execute during startup of VM"
}
variable "enable_display" {
    type = bool
    default = false
    description = "Enable/Disable Virtual Displays on the instance"
}

// ............ boot_disk_block ........... //

variable "boot_disk_source" {
    type = string
    description = "Boot Disk to be attached to the instance"
}
variable "auto_delete" {
    type = bool
    default = true
    description = "Whether the disk will be auto-deleted when the instance is deleted"
}
variable "mode" {
    type = string
    default = "READ_WRITE"
    description = "Describes disk type to use to create the disk"
}

// ............ boot_disk_block ........... //

variable "data_disk_source" {
    type = string
    description = "Boot Disk to be attached to the instance"
}

// ....... network_interface_block ........ //

variable "network_name" {
  description = "The name of the network under which instance template will be created"
  type        = string
}
variable "subnet_name" {
    type        = string
    description = "The name of the subnetwork being created"
}
variable "network_ip" {
    type        = string
    description = "The Internal IP being used"
}
variable "nat_ip" {
    type        = string
    description = "The External IP being used"
}

// ........... scheduling_block ............ //

variable "preemptible" {
    type = bool
    default = false
    description = "Specifies if the instance is preemptible"
}
variable "auto_restart" {
    type = bool
    default = false
    description = "Auto restart policy during host maintenance"
}
variable "on_host_maintenance" {
    type = string
    default = "MIGRATE"
    description = "During host maintenance it'll migrate the VM on another host"
}

// ........ shielded_instance_block ......... //

variable "secure_boot" {
    type = bool
    default = false
    description = "Verify the digital signature of all boot components, and halt the boot process if signature verification fails"
}
variable "vtpm" {
    type = bool
    default = false
    description = "Use a virtualized trusted platform module, which is a specialized computer chip you can use to encrypt objects like keys and certificates."
}
variable "integrity_monitoring" {
    type = bool
    default = false
    description = "Compare the most recent boot measurements to the integrity policy baseline and return a pair of pass/fail"
}

// ......... confidential_vm_block ......... //

variable "confidential__mode" {
    type = bool
    default = false
    description = "Defines whether the instance should have confidential compute enabled."
}

// ............ metadata_block ............. //

/* variable "user" {
    sensitive = true
    default = "ayush25shukla"
} */
variable "key_1" {
    sensitive = true
    default = "enable-osconfig"
}
variable "key_1_value" {
    sensitive = true
    default = "TRUE"
}
variable "key_2" {
    sensitive = true
    default = "enable-guest-attributes"
}
variable "key_2_value" {
    sensitive = true
    default = "TRUE"
}
variable "key_3" {
    sensitive = true
    default = "ssh-keys"
}
/* variable "public_key" {
    default = "./instance_group/id_rsa.pub"
} */

#......................................Unmanaged Instance Group ........................................#

variable "ig_name" {
    type = string
    description = "The name of the UMIG"
}