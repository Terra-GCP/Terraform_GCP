# proivder rule to enforce instance type/size

package terraform

import input.tfplan as tfplan

# Allowed sizes by provider
allowed_types = {
    "google": ["n1-standard-1", "n1-standard-2", "f1-micro"]
}

# Attribute name for instance type/size by provider
instance_type_key = {
    "google": "machine_type"
}

array_contains(arr, elem) {
  arr[_] = elem
}

get_basename(path) = basename{
    arr := split(path, "/")
    basename:= arr[count(arr)-1]
}

# Extracts the instance type/size
get_machine_type(resource) = machine_type {
    
    provider_name := get_basename(resource.provider_name)
    machine_type := resource.change.after[instance_type_key[provider_name]]
}

deny[reason] {
    resource := tfplan.resource_changes[_]
    machine_type := get_machine_type(resource)
    
    provider_name := get_basename(resource.provider_name)
    not array_contains(allowed_types[provider_name], machine_type)

    reason := sprintf(
        "%s: machine type %q is not allowed",
        [resource.address, machine_type]
    )
}