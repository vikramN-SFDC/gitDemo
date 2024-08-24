public class demoMapClass {
    public static void mapMethod(){
        List<Account> ls = [select Id,Name from Account];
        Map<Id, Account> m = new Map<Id, Account>(ls);
        system.debug(m);
    }
    
    public static void mapMethod1(){
        map<string,string> studentSubject = new map <string,string>();
        //add()
        studentSubject.put('ajay','maths');
        studentSubject.put('akash','english');
        studentSubject.put('vijay','science');
        
        //equal()
        map<string,string> studentSubject1 = new map <string,string>();
        studentSubject1.put('ajay','maths');
        studentSubject1.put('akash','english');
        studentSubject1.put('vijay','science');
        studentSubject1.put('Raj','marathi');
        boolean result =studentSubject.equals( studentSubject1); 
        system.debug(+result);
        string result1=studentSubject1.get('akash');
        system.debug(+result1);
        
        
        //isEmpty()
        //Boolean empty = studentSubject1.isEmpty();
        system.debug(studentSubject1.isEmpty());
        
        //keySet()
        Set <String> studentSubject2 = new Set<String>();
        studentSubject2 = studentSubject1.keySet();
        system.debug(+studentSubject2);
        
        //putAll()
        studentSubject.putAll(studentSubject1);
        system.debug(+studentSubject1);
        
        //remove()
        system.debug(studentSubject1.remove('vijay'));
        
        //size()
        system.debug(studentSubject1.size());
        
        //values()
        system.debug(studentSubject1.values());
        
        //get()
        system.debug(studentSubject1.get('xyz'));
    }
    
    
}