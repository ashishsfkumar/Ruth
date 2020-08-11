trigger CreateChildRecords on Account (after insert) {
    
    List<Contact> conList=new List<Contact>();
    List<Opportunity> oppList=new List<opportunity>();
    for(Account a:trigger.new){
        if(a.Rating=='Hot'&&a.Industry=='Banking'){
            Contact c=new Contact();
            c.LastName='Test Contact';
            c.AccountId=a.Id;
            conList.add(c);
            
            Opportunity o=new Opportunity();
            o.Name='Test Opp';
            o.Stagename='Closed-Won';
            o.CloseDate=Date.newInstance(2020, 12, 31);
            o.AccountId=a.Id;
            oppList.add(o);
                       
        }
        try{
        insert conList;
        }catch(Exception e){
            System.debug(e.getMessage());
        }
        try{
      insert oppList;
        }catch(Exception e){
            e.getMessage();
        }
        
    }

}