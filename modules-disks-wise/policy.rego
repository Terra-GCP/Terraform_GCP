package terraform
 
import input as tfplan
 
# Allowed Terraform resources

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

# Restrict all resources to one project
required_project = "gcp-prod-project"

# Ban ports
banned_ports = ["80", "22"]
#banned_labels = "name"

 
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

#................................. Deny if project does not match ................................#

deny[msg] {
	resource := tfplan.resource_changes[_]
  
  project_id := resource.change.after.project
  not project_id == required_project

	msg := sprintf("%q: Project %q is not allowed. Must be %q", [resource.address, project_id, required_project])
}

#................................ Block protocols that aren't TCP ................................#

deny[msg] {
	resource := tfplan.resource_changes[_]
  
  allow := resource.change.after.allow[_]

  not allow.protocol == "tcp"

	msg := sprintf("%q: Protocol %q is not allowed. Must be tcp", [resource.address, allow.protocol])
}

#........................................ Block banned ports ......................................#

deny[msg] {
	resource := tfplan.resource_changes[_]
  
  allow := resource.change.after.allow[_]
  port := allow.ports[_]

  array_contains(banned_ports, port)

	msg := sprintf("%q: Port %q is not allowed.", [resource.address, port])
}

#....................................... Block banned labels ......................................#

deny[msg] {
	resource := tfplan.resource_changes[_]
  
    labels := resource.change.after.labels["group"]
    #not labels == banned_labels


	msg := sprintf("%q: Label %q is not allowed.", [resource.address, labels])
}

#............................... Warn Resources create/delete labels ...............................#

warn[sprintf(message, [action, resource.address])] {
  message  := "action '%s' requires human review (%s)"
  review   := {"create", "delete"}
  resource := input.resource_changes[_]
  action   := resource.change.actions[_]
  review[action]
}