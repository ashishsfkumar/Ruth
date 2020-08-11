public with sharing class SearchAccounts {
    
    
    public List<Account> searchAcc(String accName,String accNum){
        
        List<Account> accList=[Select id,name from Account where Name=:accName and AccountNumber=:accNum];
        return accList;        
        
    }
    
    public List<Account> searchAcc(String aName,integer aNum){
        List<Account> accList=[Select id,name,AccountNumber from Account];
        return accList;        
        
    }

}