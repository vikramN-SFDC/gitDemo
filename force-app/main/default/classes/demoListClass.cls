public class demoListClass {
    public static void demo1(){
        list <string> colour1 =new list <string>{'blue','red','orange','grey','black'};
            //colour1.add('blue,red,orange,grey,black');
            
            //add
            colour1.add(0,'pink');
        system.debug(+colour1);
        
        //addAll
        list<string> colour2=new list <string>();
        colour2.addAll(colour1);
        system.debug(+colour2);
        
        //clone
        list<string> colour3=new list <string>();
        colour3=colour2.clone();
        system.debug(+colour3);
        
        //get(index)
        string str = colour3.get(0);
        system.debug(+str );
        
        //contains()
        Boolean result = colour3.contains('yellow');
        system.debug(+result);
        
        Boolean result1 = colour3.contains('pink');
        system.debug(+result1);
        
        //isEmpty()
        Boolean result2 = colour3.isEmpty();
        system.debug(+result2);
        
        //remove()
        string colour4=colour3.remove(0);
        system.debug(+colour4);
        
        //size()
        list <string> colour5 =new list <string>{'blue','red','orange','grey','black','yellow'};
        integer size1=colour5.size();
        system.debug(size1);
       
    }
}