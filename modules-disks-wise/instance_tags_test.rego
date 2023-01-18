package terraform

test_resource_tags_allowed {
    result = deny with input as data.mock.allowed
    count(result) == 0
}