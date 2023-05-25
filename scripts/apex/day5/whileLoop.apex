/**
Loop is for repeating certain block of code
as long as certain condition

 */

 Integer count = 1 ; 
// print out the count by incrementing the value by 1
// until you reach number 5

while( count < 6){
    System.debug(count++);
   //count++
}


System.debug('------------------------');

Integer level = 1;

while( level < 15){
    System.debug(level);
    level += 2;
   

}


System.debug('------------------------');

Integer cupcakeCount = 10;

while(cupcakeCount > 0){
    System.debug(cupcakeCount);
    --cupcakeCount;

}
System.debug('------------------------');

// start from 15 , countdown 
// by decreacing by 3 each time
// 15, 12, 9, 6, 3, 0
Integer candy = 15;
while(candy >= 0){
    System.debug(candy);
    candy -= 3;
    
    
}

// System.debug(count++);  // 1
// System.debug(count++);  // 2
// System.debug(count++);  // 3
// System.debug(count++);  // 4
// System.debug(count++);  // 5
 
