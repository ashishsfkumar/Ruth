trigger UpdateDescription on Account (before insert) {
    
    for(Account a:Trigger.new){
        a.Description='Updated by Trigger';
       // We don't need a DML statement to update the same record due to which trigger fired in before Triggers
        
    }

}