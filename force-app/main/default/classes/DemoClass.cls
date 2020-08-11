public class DemoClass {
    
    public String name;
    public String city;
    public integer pincode;
    
    public List<Account> acclist;
    public Contact con;
    
    
    public List<Account> display(){
        
        accList=[Select id,name from Account];
        //return accList;
        System.debug(accList);
        return accList;
        
    }
    
    
    

}