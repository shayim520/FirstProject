public with sharing class RecursionDemo {
     // count from N to 1 in this method 
    // and print it out 
    public static void printNumber(Integer n){

       System.debug('n value is : ' + n);

       if(n<=1){
        System.debug('we are done!'); 
        
        return;
       }
       printNumber(n-1);
        
    }

     // count from N to 1 in this method 
    // and print it out 
   //  public static void printNumber(Integer n){

   //    System.debug('n value is : ' + n);

   //    if(n>1){
   //        printNumber(n-1); 
   //    }
 // }

}
