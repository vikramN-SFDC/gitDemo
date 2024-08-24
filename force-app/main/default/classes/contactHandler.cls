public class contactHandler {
    public static void updatePhoneMethod(list <contact> contactList){
        for(contact con:contactList){
            if(con.phone!=null && con.MobilePhone==null){
             con.MobilePhone=con.phone;
            }
            
        }
    }
    public static void updateDescription(list<contact>conList,map<id,contact>oldMap){
        for(contact con:conList){
            if(oldMap!=null && con.MobilePhone!=oldMap.get(con.id).MobilePhone){
                con.Description='Your mobile number is updated';
            }
        }
    }
}