// Create a List of Decimal and add 5 values in it 

// optionally , create a variable outside of your loop called sum 
// then use your for each loop to get the sum of all decimal numbers
List<Decimal> prices = new List<Decimal>{0.99, 2.99, 59.55, 89.99};
 Decimal sum = 0 ; 

 for(Decimal eachPrice  : prices){
    //sum = sum + eachPrice ; 
    sum += eachPrice ; 
 }

 System.debug('Sum is ' + sum);