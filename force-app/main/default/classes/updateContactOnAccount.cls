public class updateContactOnAccount {
    public static void contactUpdate (list <account> newList){
        list <contact> conatctInserted =new list<contact>();
        for(account acc : newList){
            contact newContact =new contact();
            newContact.firstName= acc.name;
            newContact.LastName='.';
            newContact.AccountId=acc.Id;
            conatctInserted.add(newContact);
                
        }
        if(!conatctInserted.isEmpty()){
            insert conatctInserted;
        }
    }

}