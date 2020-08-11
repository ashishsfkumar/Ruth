trigger preventDuplicate on Lead (before insert,after insert,before update) {
    PreventDuplicateHandler p=new PreventDuplicateHandler();
    if(Trigger.isInsert && Trigger.isBefore){
    p.checkDuplicate(Trigger.new);
    }
    
   
}