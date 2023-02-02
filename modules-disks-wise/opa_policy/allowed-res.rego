package terraform
 
import input as tfplan
 
# Allowed Terraform resources #

allowed_resources = [
"google_compute_address",
"google_compute_address",
"google_compute_disk",
"google_compute_disk",
"google_compute_firewall",
"google_compute_network",
"google_compute_subnetwork",
#"google_filestore_instance",
"google_service_account",
"google_compute_instance",
"google_compute_instance_group",
"google_os_config_patch_deployment",
"google_compute_resource_policy",
]

# check if array contains element
array_contains(arr, elem) {
    # iterate over arr, assert it contains elem
	arr[_] = elem
}

#................................... Deny if resource not allowed ................................#

deny[reason] {
  resource := tfplan.resource_changes[_]
  action := resource.change.actions[count(resource.change.actions) - 1]
  array_contains(["create", "update"], action)  # allow destroy action
  not array_contains(allowed_resources, resource.type)
  reason := sprintf(
    "%s: resource type %q is not allowed",
    [resource.address, resource.type]
  )
}