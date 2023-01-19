package terraform

import input as tfplan

 
#banned_labels = "name"

# check if array contains element
array_contains(arr, elem) {
    # iterate over arr, assert it contains elem
	arr[_] = elem
}


#....................................... Block banned labels ......................................#

deny[msg] {
	resource := tfplan.resource_changes[_]
  
    labels := resource.change.after.labels["group"]
    #not labels == banned_labels


	msg := sprintf("%q: Label %q is not allowed.", [resource.address, labels])
}
