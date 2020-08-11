public class PartialDMLs {
    
    public void bulkInsert(){
       Account a1=new Account(name='ABBC');
       Account a2=new Account(name='XYZ', AccountNumber='7676776');
       Account a3=new Account();
       Account a4=new Account(AccountNumber='7676767',Type='Banking',Rating='Hot');
        
        List<Account> accList=new List<Account>{a1,a2,a3,a4};
        List<Database.saveResult> result= Database.insert(accList,false); 
        System.debug(result);
        
               
    }

}