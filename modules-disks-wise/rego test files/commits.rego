package spacelift

warn[msg] {
   msg := too_many_changes[_]
}

too_many_changes[msg] {
   threshold := 50
   res := input.resource_changes
   ret := count([r | r := res[_]; r.change.actions != ["no-op"]])
   msg := sprintf("more than %d changes (%d)", [threshold, ret])
   ret > threshold
}