public class SampleDeployClass { 
    
    
    /* Added a extra comment to check the Git-jenkins integration, added ------------extra */
    public static testmethod void t1() {
        helloMethod(); //Extra comment has been added
 
        Account acc = new Account(Name= 'fred');
        insert acc; // hit the trigger
 
        // Check that the trigger properly set the phone field:
        Account retAcc = [select id, phone from Account where id=:acc.id][0];
        System.assertEquals(getPhone(), retAcc.phone);
    }
 
    public static String getPhone() {
        return 'SamplePhone#';
    }
    
    public static void helloMethod() {
        System.debug('Hello World');
    }
}