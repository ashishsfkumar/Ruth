public class StaticDemo {
    // static variables
    public Static String name;
    public Static integer age;
    
    // global instance variables
    public String address;
    
    public StaticDemo(){
        name='Test Name';
        age=25;
        address='Hyderabad,India';
        
    }
    
    public static void display(){
        //local variable
        integer var=20;
        System.debug('Name '+ name);
        System.debug('Age '+ age);
        // Static methods cannot access instance variables
       //System.debug('Address' + address);
              
    }
    
    
    public  void method2(){
       System.debug('Name '+ name);
       System.debug('Address '+address);
              
    }

}