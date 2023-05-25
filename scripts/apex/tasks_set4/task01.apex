

Integer sum = 0;
for(Integer i =1; i <= 100; i += 2){
    System.debug(i);
    sum += i;

}
System.debug(  'Sum of odd number : ' + sum);

// while loop version

Integer sum1 = 0;
Integer  i = 1;

while( i <= 100){

    sum1 += i;

   // System.debug(i);
    i +=2;
    

   

}

System.debug( 'Sum of odd number "while loop version" : ' + sum1);