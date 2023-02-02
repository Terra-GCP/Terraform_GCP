package terraform

import input as tfplan

 
# check if array contains element
array_contains(arr, elem) {
    # iterate over arr, assert it contains elem
	arr[_] = elem
}


#................................ Block protocols that aren't TCP ................................#

deny[msg] {
	resource := tfplan.resource_changes[_]
  
  allow := resource.change.after.allow[_]

  not allow.protocol == "tcp"

	msg := sprintf("%q: Protocol %q is not allowed. Must be tcp", [resource.address, allow.protocol])
}
