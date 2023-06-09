/**
 * Student class can be the parent|super class
 * for OnlineStudent class 
 * to provide base fields and functionality 
 * so we do not have to recreated those fields 
 * and methods if we want to use it as is in the 
 * child|sub classes 
 * In order for a class to be Parent|Super class 
 * It need to be marked as Virtual 

 */

public virtual class Student {
    // firstName, lastName, studentId
    public String  firstName;
    public String  lastName;
    public Integer studentId;

    // COnstructor : 
    // a special block of code (similar to method)
    // get called automatically when object is being created
    // it has no trturn type (not even void)
    // it has same name as class name

    public Student (){
        System.debug('Message from Constructor'); 

        this.firstName = 'unknown';
        this.lastName = 'Unknown';
        this.studentId = 0;

    }

    public Student(String ftName, String ltName, Integer sId){

        this.firstName = ftName;
        this.lastName = ltName;
        this.studentId =sId;

    }

    public void study(){
        System.debug(this.firstName + ' study'); 
        
    }
   
    // create a overloaded version of study method 
    // it has 1 integer parameter hour
    // and print  XX Study YY hours
    public void study(Integer hour){

        System.debug(  this.firstName  + ' Study ' + hour + ' hour'); 

    }
    
}