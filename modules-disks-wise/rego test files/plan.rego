package spacelift

allow {
   resource_change := input.resource_changes[_]
   resource_change.change.after.labels["env"]
   resource_change.change.after.labels["lin_patch"]
}