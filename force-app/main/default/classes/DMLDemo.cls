public with sharing class DMLDemo {
    
    
    public void insertDemo(){
        
        Account a=new Account();
        // a.Name='Apex Account';
        a.Rating='Hot';
        a.AccountNumber='676767676';
        insert a;                       
    }
    
    public void bulkInsert(){
       Account a1=new Account(name='ABBC');
       Account a2=new Account(name='XYZ', AccountNumber='7676776');
       Account a3=new Account();
       Account a4=new Account(AccountNumber='7676767',Type='Banking',Rating='Hot');
        
        List<Account> accList=new List<Account>{a1,a2,a3,a4};
        insert accList;
        
        
        
        
    }
    
    
    public void updateDemo(){
        
// update all accounts which are created today; Update the Industry to Banking and Rating to Cold
      List<Account> updateList=new List<Account>();
      List<Account> updList=[SELECT Id, Industry, Rating FROM Account where CreatedDate=Today];  
        for(Account a:updList) {
            a.Rating='Cold';
            a.Industry='Banking';
                updateList.add(a);     
        }
        update updateList;
        
        
    }
    
    
    public void deleteDemo(){
        // delete all accounts which are created Today
        
        List<Account> delList=[Select id from Account where CreatedDate=Today];
        delete delList;
                
    }
    
    
    public void undeleteDemo(){
        // delete all accounts which are created Today
        
        List<Account> delList=[Select id from Account where CreatedDate=Today and isdeleted=True All Rows];
        undelete delList;
                
    }


 public void upsertDemo(){
       Account a1=new Account(Name='ABC', Account_Email__c='abc@test.com');
       Account a2=new Account(Name='ABC Corp', Account_Email__c='abccorp@test.com');
     List<Account> upsertList=new List<Account>{a1,a2};
         
         upsert upsertList Account.fields.Account_Email__c;     
     
     
    }





    
    

}