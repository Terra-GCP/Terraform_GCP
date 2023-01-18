package spacelift

test_allow_missing_name_tag {
 not allow with input as {
     "resource_changes": [
       {
         "change": {
           "after": {
             "tags": null,
           },
         }
       }
     ]
   }
}