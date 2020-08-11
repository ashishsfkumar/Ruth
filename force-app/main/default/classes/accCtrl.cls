public class accCtrl {
    
    public  List<Contact> conList{get;set;}
    public Id accId;
    public accCtrl(ApexPages.StandardController stdCtrl){
        accId = (Id)stdCtrl.getId();
        system.debug('accId --> '+accId);
        conList = [SELECT Id , FirstName , LastName, Email
                   FROM Contact
                   WHERE AccountId =: accId ];
         system.debug('conList --> '+conList.size());
         System.debug('Hello');
    }
    
    public PageReference quickUpdat(){
        try{
            update conList;
            return ApexPages.CurrentPage();
        }
        catch(Exception e) {
            System.debug('@@@Error '+'The following error has occured '+e.getMessage());
            return null;
        }
    }
   
}