trigger KeyFieldCheck on Lead (before insert) {
	Integer keyFields = 0;
    Integer poppedFields = 0;
    List<Task> fieldsToVerify = new List<Task>();
    for(Lead L : Trigger.new){
        if(L.FirstName != null){
            poppedFields++;
        }
        if (L.LastName != null){
            poppedFields++;
        }
        if (L.Email != null){
            poppedFields++;
        }
        if (L.Phone != null){
            poppedFields++;
        }
        if (L.Website != null){
            poppedFields++;
        }
        if (L.Title != null){
            poppedFields++;
        }
    }   
    if(poppedFields >= 3){
        for (Lead L : Trigger.new){
            if(L.FirstName != null){
                keyFields++;
                Task t = new Task(Priority = 'Low', Status = 'In Progress', Subject = 'Verify the First Name field');
                fieldsToVerify.add(t);
               }
            if (L.LastName != null){
                keyFields++;
                Task t = new Task(Priority = 'Low', Status = 'In Progress', Subject = 'Verify the Last Name field');
                fieldsToVerify.add(t);
                }
            if (L.Email != null){
                keyFields++;
                Task t = new Task(Priority = 'Low', Status = 'In Progress', Subject = 'Verify the Email field');
                fieldsToVerify.add(t);
                 }
            if (L.Phone != null){
                keyFields++;
                Task t = new Task(Priority = 'Low', Status = 'In Progress', Subject = 'Verify the Priority field');
                fieldsToVerify.add(t);
                }
            if (L.Website != null){
                keyFields++;
                Task t = new Task(Priority = 'Low', Status = 'In Progress', Subject = 'Verify the Website field');
                fieldsToVerify.add(t);
                }
            if (L.Title != null){
                keyFields++;
                Task t = new Task(Priority = 'Low', Status = 'In Progress', Subject = 'Verify the Title field');
                fieldsToVerify.add(t);
                }
            L.Key_Fields_Populated__c = keyFields;
        }
        insert fieldsToVerify;
    } else {
        for (Lead L : Trigger.new){
            if(L.FirstName != null){
                keyFields++;
               }
            if (L.LastName != null){
                keyFields++;
                }
            if (L.Email != null){
                keyFields++;
                 }
            if (L.Phone != null){
                keyFields++;
                }
            if (L.Website != null){
                keyFields++;
                }
            if (L.Title != null){
                keyFields++;
            }
            L.Key_Fields_Populated__c = keyFields;
        }
    }
}