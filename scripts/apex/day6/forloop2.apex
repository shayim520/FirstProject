/**
  Count from 1 -10 using for loop 
    print the count multplied by 5
    output should look like this : 
    1 X 5 = 5 
    2 X 5 = 10 
    3 X 5 = 15 
    ........
 */
for(Integer count=1 ; count<=10 ; count++ ){
    System.debug(count + ' X 5 = ' +  (count*5)  ); 
}

/**
Continue from above code, 
Above code works great if you just want to get the multiplication table of 5 , we want to be able to provide any number not just 5 and generate multiplication table of any numbers 
 */
System.debug('------------------') ; 

//  Integer num = 4 ; 
//  Integer count = 7 ; 

 // first number you get from variable count 
 // second number you get from variable num 
 // result you get by multiplying 2 numbers 
 // eventually generate this output 
 //  in below format 
 //  // 1 X 5 = 5 
 // System.debug(count + ' X ' + num + ' = ' + ( count*num )   ); 

Integer num = 3 ; 

for( Integer count=1 ; count<=10 ; count++){
    System.debug(count + ' X ' + num + ' = ' + ( count*num )  ); 
}

System.debug('------------------') ; 
/**
Give a number , print out below 

YourNumber + 1 = the result
YourNumber + 2 = the result
YourNumber + 3 = the result
..
YourNumber + 10= the result

 */

Integer luckynumber = 7;
for(Integer count = 1; count <= 10; count++){
    System.debug(luckynumber + ' + ' +  count 
     + ' = ' + (luckynumber + count));
}
