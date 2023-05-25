/**
List is a collection type that store elements in insertion order
each and every elements are stored in a position that start with 0

for example if you below list
//                                item     1 2 3  4 5  6
List<Integer> numList = new List<Integer>{19,1,23,7,1,99};
                                  index    0 1 2  3 4 5
 */

 List<Integer> numList = new List<Integer>{19,1,23,7,11,99};

 // get the element at certain index using  get method 

// get the first element and store it in a variable 

 Integer item1 = numList.get(0);
 System.debug('first item value ' + item1);

 // directly print out the second item value using get method

 System.debug('second item value ' + numList.get(1));
 
 System.debug( numList.get(2));
 System.debug( numList.get(3));
 System.debug( numList.get(4));
 System.debug( numList.get(5));

 



 System.debug(numList);
 
 
 System.debug('---------------------------------------');
 
 // iterate over all the elements in the loop without for each loop

 for(Integer index =0; index < 6; index++){
    System.debug(numList.get(index));
 }
 