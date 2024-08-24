public class ContactTriggerHandler {
    public static void SentEmailNotification( list <contact> conlist){
        
        list<messaging.Email> emailList = new list<messaging.Email>();
        For(Contact VarP :conlist){
            if(VarP.Email != null){
                messaging.SingleEmailMessage emailmsg = new messaging.SingleEmailMessage();
                string[] toAddress = new string[]{Varp.Email};
                    emailmsg.setToAddresses(toAddress);
                string emailsub = 'welcome'  + VarP.FirstName;
                 emailmsg.setSubject(emailsub);
                string displayName='Vikram';
                 emailmsg.setSenderDisplayName(displayName);
                string content = 'Hi!!' +  VarP.FirstName +'<br/><br/>'+
                                'Welcome to salesforce' + '<br/><br/>'+
                                'Have a happy Salesforce journey!!';
                    emailmsg.setHtmlBody(content);
                         emailList.add(emailmsg)  ;
                
                    
            }
        }
        messaging.sendEmail(emailList);
    }

}