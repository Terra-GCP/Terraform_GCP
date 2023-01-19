package terraform1

import input as tfplan
 

# Restrict all resources to one project
required_project = "gcp-prod-project"

# check if array contains element
array_contains(arr, elem) {
    # iterate over arr, assert it contains elem
	arr[_] = elem
}

#................................. Deny if project does not match ................................#

deny[msg] {
	resource := tfplan.resource_changes[_]
  
  project_id := resource.change.after.project
  not project_id == required_project

	msg := sprintf("%q: Project %q is not allowed. Must be %q", [resource.address, project_id, required_project])
}