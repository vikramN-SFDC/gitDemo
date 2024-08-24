public class setDemo {
    public void setMethod(){
        map <Id, account> newSet = new map <Id,account> ([SELECT id,name from account LIMIT 2]);
        system.debug('newSet='+newSet);
    }
}