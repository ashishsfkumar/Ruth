trigger ContextVariablesDemo on Account (before delete) {
    
    System.debug('Value of trigger.new is '+ Trigger.new); 
    System.debug('Value of trigger.old is '+ Trigger.old); 
    System.debug('Value of trigger.newMap is '+ Trigger.newMap); 
    System.debug('Value of trigger.oldMap is '+ Trigger.oldMap); 

}