package terraform

import input as tfplan

 
# check if array contains element
array_contains(arr, elem) {
    # iterate over arr, assert it contains elem
	arr[_] = elem
}

#............................... Warn Resources create/delete labels ...............................#

warn[sprintf(message, [action, resource.address])] {
  message  := "action '%s' requires human review (%s)"
  review   := {"create", "delete"}
  resource := input.resource_changes[_]
  action   := resource.change.actions[_]
  review[action]
}