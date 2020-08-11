public class CalculationClass {
    
    public integer num1;
    public integer num2;
    
    
    public integer Summation(){
        num1=10;
        num2=20;
        integer Sum=num1+num2;
        return Sum;
        
    }
    
    public double calculate(){
        
        double d=Summation()/10;
        return d;
        
    }
    
    
    public void findProd(integer n1,integer n2){
        
        integer prod=n1*n2;
        System.debug('Product of the input Numbers is'+ prod);
        
    }
    
    
    

}