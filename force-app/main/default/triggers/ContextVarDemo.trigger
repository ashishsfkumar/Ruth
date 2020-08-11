trigger ContextVarDemo on Account (before insert,after insert,before update,after update,before delete,after delete,after undelete) {

    if(Trigger.isbefore && Trigger.isinsert){
         System.debug('Before insert Trigger Fired');
        
    }
    
     if(Trigger.isafter && Trigger.isinsert){
         System.debug('After insert Trigger Fired');
        
    }
     if(Trigger.isbefore && Trigger.isupdate){
         System.debug('Before update Trigger Fired');
        
    }
     if(Trigger.isafter && Trigger.isupdate){
         System.debug('After update Trigger Fired');
        
    }
    
    
    
    
}