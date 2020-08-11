public class PreventDuplicateHandler {
    Set<String> emails=new Set<String>();
    
    public void checkDuplicate(List<Lead> newLeads){
    for(Lead L:newLeads){
        emails.add(L.email);
        System.debug('Email '+ emails);
     List<Lead> leadList= [Select id from Lead where email in :emails];
        System.debug('LeadList '+ leadList);
        
        if(leadList.size()>0){
            
            L.addError('Lead Already exists with the same email Id');
        }
        
    }
    }

}