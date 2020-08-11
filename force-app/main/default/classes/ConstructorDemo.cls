public class ConstructorDemo {
    
    // No Return Type
    // It has the same name as the class
    // It is used to initialize variables with values whenever class loads
    public ConstructorDemo(){
        
        System.debug('Constructor Called');
        
        
    }
    
    public ConstructorDemo(String message){
        
        System.debug('Parameterized Constructor Called');
        
        
    }

}