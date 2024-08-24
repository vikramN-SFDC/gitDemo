public class contactTriggerUpdateAccount {
    public static void updateContactClass (list <contact> conList){
 
list<account> accList =new list<account>();

for(contact con: conList){

  if(con.accountId==null)
{
 account acc= new account();
 acc.Name =con.lastName;
 acc.phone=con.phone;
 accList.add(acc);
} 
}
    
if(!accList.isEmpty()){
 insert accList;
}
}
}