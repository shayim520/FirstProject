System.debug('hello Shay');


Integer annualRevenue = 5000000;
String  rating = (annualRevenue > 100000) ? 'Hot' : 'Cold';

System.debug('Rating is ' + rating );


// declare and initiaze a variable called score1 
// declare a variable called examResult 
// assign the value of examResult according to the score1 > 66 or not

Integer score = 66;
String examResult = (score>66) ? 'Pass' : 'Fail';
System.debug(' Exam Result : ' + examResult);

// declare and initiaze a variable called salary as Integer 
// declare a Double variable called taxRate 
// assign the value of taxRate according to below condition
// if the salary is greater than 100K , taxRate is 0.3 else 0.15

Integer salary = 80000;
Double taxRate = (salary>100000) ? (0.3) : (0.15);
    System.debug(' Tax Rate is : ' + taxRate);