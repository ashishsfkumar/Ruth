public class ExceptionDemo {
    
    public void exDemo(){
        
        String name;
        try{
        String capsName=name.toUpperCase();
            System.debug('Name is '+ capsName);
        } catch(NullPointerException ex){
          
            System.debug('Excpetion Occured ' + ex.getMessage());
            System.debug('Line Number '+ ex.getLineNumber());
           
        }
        
        System.debug('Statement after exception');
        
    }
    
    
    public void insertException(){
        try{
        Account a=new Account();
            a.Name='Test';
        a.AccountNumber='5656656';
        insert a;
        } catch(DmlException e){
            
            System.debug('Exception occured due to '+ e.getMessage());
        } finally{
            
            System.debug('Finally exceuted');
        }
        
        
    }
    
    
    
    
    
    
    
    
    

}