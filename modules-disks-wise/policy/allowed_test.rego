package spacelift

test_allow_missing_environment_label {
  allow with input as {
     "resource_changes": [
       {
         "change": {
           "after": {
             "labels": {"prod":"true"},
           },
         }
       }
     ]
   }
}