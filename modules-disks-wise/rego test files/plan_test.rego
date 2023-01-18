package spacelift

test_allow_missing_env_tag {
 not allow with input as {
     "resource_changes": [
       {
         "change": {
           "after": {
             "tags": { "name": "nprod" },
           },
         }
       }
     ]
   }
}