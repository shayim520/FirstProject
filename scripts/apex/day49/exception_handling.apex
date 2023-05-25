// Exception handling
// try-catch

System.debug('My code started'); 

String s;
try {
    System.debug('inside try block'); 
    
    System.debug(s.toUpperCase()); // this line throw NullPointerException 

    System.debug('end try block'); 
    
    
} catch (NullPointerException  e) {
    
    System.debug('inside catch block'); 
    System.debug('Error Occured!!!'); 
    
}

 

System.debug('My code Finished'); 

