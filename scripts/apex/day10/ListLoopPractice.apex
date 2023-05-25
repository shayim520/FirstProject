/**
Create a list of 10 Decimal numbers 
in 2 separate loops 

in first loop 
iterate over the list and print out the each items 
skip item number 3 and 7 while printing

in second loop 
iterate over the list and print out the each items 
break out of the loop if the number is more than 100

 */

List<Decimal> prices = new List<Decimal>{
  1.11,
  22.22,
  100.99,
  3.33,
  14.44,
  200.00,
  12.50,
  8.88,
  9.99,
  50.00
};

// print out the last item value without hard coding
// first get the last item index, it's always 1 less than item count
Integer indexOfLastItem = prices.size() - 1;
System.debug('index Of Last Item ' + indexOfLastItem);
// then print out the lat item value using get method
System.debug('last Item value ' + prices.get(indexOfLastItem));

/*in first loop 
iterate over the list and print out the each items 
skip item number 3 and 7 while printing
*/

for (Integer index = 0; index < prices.size(); index++) {
  if (index == 2 || index == 6) {
    continue;
  }

  System.debug('first loop ' + prices.get(index));
}

System.debug('----------------------------------');
/**in second loop 
iterate over the list and print out the each items 
break out of the loop if the number is more than 100
 */

 for(Decimal eachPrice : prices){

    if(eachPrice > 100){

        break;
    }
    System.debug(eachPrice);
 }

 
System.debug('----------------------');
for (Integer index = 0; index < prices.size(); index++) {
  if (prices.get(index) > 100) {
    break;
  }

  System.debug('second loop ' + prices.get(index));
}
