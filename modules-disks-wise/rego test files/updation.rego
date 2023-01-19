package spacelift

warn[sprintf(message, [action, resource.address])] {
  message  := "action '%s' requires human review (%s)"
  review   := {"update", "delete"}
  resource := input.resource_changes[_]
  action   := resource.change.actions[_]
  review[action]
}