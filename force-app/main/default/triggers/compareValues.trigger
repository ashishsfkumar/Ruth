trigger compareValues on Account (before update) {
    
    for(Account a:Trigger.new){
        Account oldAcc=Trigger.oldMap.get(a.Id);
        
        if(a.AccountNumber!=oldAcc.AccountNumber){
            a.addError('YOu are not allowed to change the Account Number');
       
        }
           
        
    }

}