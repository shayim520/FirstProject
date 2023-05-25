/**
 Create a List of String that store 4 names 

 print out the size 
 print the item 3 

 print the item 1 

 print out every item using for loop 

 */

List<String> names = new List<String>();
names.add('شاھى ');
names.add('John');
names.add('Ali');
names.add('Tom');
names.add('Jack');
names.add('Toyson');
names.add('Alex');

System.debug(names);
//print out the size
System.debug('Item count in the list ' + names.size());
// print the item 3
System.debug('the item 3 :' + names.get(2));
// print the item 1
System.debug('the item 1 :' + names.get(0));

// store the value of number 2 item into a variable 
// then print out 
String item2 = names.get(1);
System.debug('item2 value is ' + item2);
   System.debug('-------------------------------------------');


// print out every item using for loop

for( Integer i =0; i < names.size(); i++){


    System.debug('Index ' + i +  ' is ' + names.get(i));
}

   System.debug('-------------------------------------------');


   for(Integer index = 0; index < names.size(); index++){

    if(names.get(index) == 'Tom'){

        break;
    }

    System.debug('breake iteration : ' + names.get(index));


   }

   System.debug('-------------------------------------------');

   for(String eachName : names){

    if(eachName == 'Tom'){

        continue;
    }

    System.debug('skip iteration : ' + eachName);

   }






