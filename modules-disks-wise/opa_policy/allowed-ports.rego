package terraform

import input as tfplan
 

# Ban ports
banned_ports = ["80", "22"]

 
# check if array contains element
array_contains(arr, elem) {
    # iterate over arr, assert it contains elem
	arr[_] = elem
}

#........................................ Block banned ports ......................................#

deny[msg] {
	resource := tfplan.resource_changes[_]
  
  allow := resource.change.after.allow[_]
  port := allow.ports[_]

  array_contains(banned_ports, port)

	msg := sprintf("%q: Port %q is not allowed.", [resource.address, port])
}