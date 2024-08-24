public class accountDubCheck  {

public static void checkDubEmail(list <contact> conList){
 
   set<string>newEmailSet= new set<string>();
    set<string>existingEmailSet=new set<string>();
for(contact con : conList){
            
        if(con.Email!=null){
               newEmailSet.add(con.email);  //adding new email

      }
   }
   
  list<contact>existingEmailList=[SELECT id,Email FROM contact WHERE Email IN:newEmailSet ];


  for (contact con :existingEmailList){
   
   existingEmailSet.add(con.Email);

   }
  
for(contact con :conList){
   
    if(existingEmailSet.contains(con.Email)){
   
      con.Email.addError('Dublicate Email not Allowed');

}
}


}     
}