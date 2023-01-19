module "compute_network" {
    source = "./compute_network"
    project_id = var.project_id
    network_name = "${var.prefix}-vpc"                                          #.....Replace Me.....#
}

module "compute_subnetwork" {
    source = "./compute_subnetwork"
    region = var.region
    network_name = module.compute_network.network_name
    subnet_name = "${var.prefix}-subnet"
    depends = module.compute_network.network_name
}

module "compute_firewall" {
    source = "./compute_firewall"
    network_name = module.compute_network.network_name
    firewall_name = "${var.prefix}-firewall-rule"
    depends = module.compute_subnetwork.subnetwork_name
}

module "compute_address" {
    source = "./compute_address"                                                #.....Replace Me.....#
    subnet_name = module.compute_subnetwork.subnetwork_name
    depends = module.compute_subnetwork.subnetwork_name
}

/* module "instance_template" {
    source = "./instance_template"
    schedule_name = "${var.prefix}-snapshot-schedule"                         #.....Replace Me.....#
    depends = module.compute_address.External_IP_self_link
} */

module "snapshot_schedule" {
    source = "./snapshot_schedule"
    schedule_name = "${var.prefix}-snapshot-schedule"                         #.....Replace Me.....#
    depends = module.compute_address.External_IP_Name
}

module "compute_disk" {
    source = "./compute_disk"
    zone = var.zone
    boot_disk_name = "${var.prefix}-boot-disk"                                #.....Replace Me.....#
    data_disk_name = "${var.prefix}-data-disk"                                #.....Replace Me.....#
    resource_policies = module.snapshot_schedule.schedule_id                               
    depends = module.snapshot_schedule.schedule_name
}

module "filestore_instance" {
    source = "./filestore_instance"
    filestore_name = "${var.prefix}-filestore"
    zone = var.zone
    network_name = module.compute_network.network_id                     
    depends = module.compute_disk.Data_Disk_Name
}

module "instance_group" {
    source = "./instance_group"
    #template_id = module.instance_template.instance_template_id
    vm_name = "${var.prefix}-vm"
    boot_disk_source = module.compute_disk.Boot_Disk_Name
    data_disk_source = module.compute_disk.Data_Disk_Name
    hostname = "${var.prefix}.compute.engine"
    network_name = module.compute_network.network_id
    subnet_name = module.compute_subnetwork.subnetwork_name
    network_ip = module.compute_address.Internal_IP_Address
    nat_ip = module.compute_address.External_IP_Address
    ig_name = "${var.prefix}-instance-group"
    depends = module.filestore_instance.filestore_name
}

module "os_patching" {
    source = "./os_patching"
    patch_id = "${var.prefix}-os-patch"
    depends = module.instance_group.UMIG_Name
}
