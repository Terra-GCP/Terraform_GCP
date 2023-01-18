#.................................... Network Output Block ....................................#

output "Network_Name" {
  value       = module.compute_network.network_name
  description = "The URI of the VMs being created"
}
output "Network_Description" {
  value       = module.compute_network.network_description
  description = "The URI of the VMs being created"
}
output "Network_Routing_Mode" {
  value       = module.compute_network.network_routing_mode
  description = "The URI of the VMs being created"
}

#................................... SubNetwork Output Block ...................................#

output "Subnetwork_Name" {
  value       = module.compute_subnetwork.subnetwork_name
  description = "The name of the Subnet being created"
}
output "Subnetwork_Description" {
  value       = module.compute_subnetwork.subnetwork_description
  description = "The description of the Subnet being created"
}
output "Subnetwork_Region" {
  value       = module.compute_subnetwork.subnetwork_region
  description = "The region of the Subnet being created"
}

#.................................. External_IP_Address Output ..................................#

output "External_IP_Name" {
  value       = module.compute_address.External_IP_Name
  description = "The name of the External IP resource being created"
}
output "External_IP_Address" {
  value       = module.compute_address.External_IP_Address
  description = "The address of the External IP being created"
}
output "Address_1_Type" {
  value       = module.compute_address.Address_1_Type
  description = "The address type of this IP being created"
}
output "External_IP_NW_Tier" {
  value       = module.compute_address.External_IP_NW_Tier
  description = "The network tier of the External IP being created"
}

#.................................. Internal_IP_Address Output ..................................#

output "Internal_IP_Name" {
  value       = module.compute_address.Internal_IP_Name
  description = "The name of the Internal IP resource being created"
}
output "Internal_IP_Address" {
  value       = module.compute_address.Internal_IP_Address
  description = "The address of the Internal IP being created"
}
output "Address_2_Type" {
  value       = module.compute_address.Address_2_Type
  description = "The address type of this IP being created"
}
output "Internal_IP_Subnet" {
  value       = module.compute_address.Internal_IP_Subnet
  description = "The subnetwork under which this IP being created"
}

#................................ Snapshot Schedule Output Block ................................#

output "Snapshot_Schedule_Name" {
  value       = module.snapshot_schedule.schedule_name
  description = "The Name of the snapshot schedule being created"
}
output "Snapshot_Schedule_Descrption" {
  value       = module.snapshot_schedule.schedule_description
  description = "Description of the snapshot schedule being created"
}

#....................................... Boot Disk Output .......................................#

output "Boot_Disk_Name" {
  value       = module.compute_disk.Boot_Disk_Name
  description = "The Name of the boot disk being created"
}
output "Boot_Disk_Labels" {
  value       = module.compute_disk.Boot_Disk_Labels
  description = "The Label of the boot disk being created"
}
output "Boot_Disk_Size" {
  value       = module.compute_disk.Boot_Disk_Size
  description = "The Size of the boot disk being created"
}
output "Boot_Disk_Interface" {
  value       = module.compute_disk.Boot_Disk_Interface
  description = "The Interface type of the boot disk being created"
}
output "Boot_Disk_Type" {
  value       = module.compute_disk.Boot_Disk_Type
  description = "The type of the boot disk being created"
}

#...................................... Data Disk Output ........................................#

output "Data_Disk_Name" {
  value       = module.compute_disk.Data_Disk_Name
  description = "The Name of the data disk being created"
}
output "Data_Disk_Labels" {
  value       = module.compute_disk.Data_Disk_Labels
  description = "The Label of the data disk being created"
}
output "Data_Disk_Size" {
  value       = module.compute_disk.Data_Disk_Size
  description = "The Size of the data disk being created"
}
output "Data_Disk_Interface" {
  value       = module.compute_disk.Data_Disk_Interface
  description = "The Interface type of the data disk being created"
}
output "Data_Disk_Type" {
  value       = module.compute_disk.Data_Disk_Type
  description = "The type of the data disk being created"
}

#....................................... Filestore Output .......................................#

output "filestore_name" {
  value       = module.filestore_instance.filestore_name
  description = "The Name of the filestore instance being created"
}
output "filestore_tier" {
  value       = module.filestore_instance.filestore_tier
  description = "The tier type of the filestore being created"
}
output "fileshare_name" {
  value       = module.filestore_instance.fileshare_name
  description = "The name of the fileshare being created"
}
output "fileshare_capacity" {
  value       = module.filestore_instance.fileshare_capacity
  description = "The capacity of the fileshare being created"
}
output "fileshare_network" {
  value       = module.filestore_instance.fileshare_network
  description = "The network ip ranges of the fileshare being created"
}
output "fileshare_mode" {
  value       = module.filestore_instance.fileshare_mode
  description = "The mode of the fileshare being created"
}

#....................................... VM Instance Output .....................................#

output "VM_Name" {
  value       = module.instance_group.VM_Name
  description = "The Name of the VM being created"
}
output "VM_Name_Internal_IP" {
  value       = module.instance_group.VM_Name_Internal_IP
  description = "The Internal IP of the VM being created"
}
output "VM_Name_External_IP" {
  value       = module.instance_group.VM_Name_External_IP
  description = "The Internal IP of the VM being created"
}
output "VM_Machine_Family" {
  value       = module.instance_group.VM_Machine_Family
  description = "The machine family of the VM being created"
}
output "VM_Status" {
  value       = module.instance_group.VM_Status
  description = "The desired status of the VM being created"
}
output "VM_Hostname" {
  value       = module.instance_group.VM_Hostname
  description = "The HostName of the VM being created"
}
output "VM_Labels" {
  value       = module.instance_group.VM_Labels
  description = "The labels of the VM being created"
}
output "VM_Maintenance" {
  value       = module.instance_group.VM_Maintenance
  description = "The On-Host-Maintenance status of the VM being created"
}
/* output "VM_Service_Account" {
  value       = module.instance_group.VM_Service_Account
  description = "The service being used for the VM"
} */
output "VM_Confidential_Mode" {
  value       = module.instance_group.VM_Confidential_Mode
  description = "The Confidential Mode status of the VM"
}

#....................................... UMIG Instance Output ....................................#

output "UMIG_Name" {
  value       = module.instance_group.UMIG_Name
  description = "The Name of the UMIG being created"
}
/* output "UMIG_Instances" {
  value       = module.instance_group.UMIG_Instances
  description = "The Name of the Instances being created under UMIG"
} */

#........................................ OS Patching Output .....................................#

output "os-patch-start-time" {
    value = module.os_patching.os-patch-start-time
}
output "os-patch-duration" {
    value = module.os_patching.os-patch-duration
}
output "os-patch-next-schedule" {
    value = module.os_patching.os-patch-next-schedule
}
output "os-patch-update-time" {
    value = module.os_patching.os-patch-update-time
}
output "OS_Patching" {
  value = module.os_patching.os-patch-duration
}