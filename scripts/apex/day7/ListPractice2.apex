/**
Declare a List of Integer variable and initialize it's value(empty)

Fill up the List with 100 items, starting with 1 ----> 10
 */

 List<Integer> numberList = new List<Integer>();

 for(Integer count = 1; count <= 100; count++){
    numberList.add(count);
    
 }
 System.debug(numberList);
 System.debug(numberList.size());

//  numberList.add(1);
//  numberList.add(2);
//  numberList.add(3);
//  numberList.add(4);
//  numberList.add(5);
//  ...
//  numberList.add(100);

/* create a List of Integer and store 15 items
all item value should be 10
10,10,10,10,10,10,10,10,10,10,10,10,10,10,10.
*/

List <String> voteNumbers = new List<String>();

for(Integer count=1; count <= 15; count++){
    voteNumbers.add('Hello');
    
}
System.debug(voteNumbers);

/**
how to count the items inside the list
so we get the a number
size() method of list
 */

Integer voteCount = voteNumbers.size();
System.debug(voteCount);

//or you can directly print it out without saving
System.debug(voteNumbers.size());


