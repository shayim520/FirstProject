/**
For each loop is specifically used to 
Interate over (loop through ) each and every item
inside Collection like (List , Set)


for (DataType eachItem  : yourCollectionVariable  ){
    // do what you want to do with each item
}
*/

List<Integer> numberList = new List<Integer>{5,7,4,8,6};

System.debug('Items countv : ' +  numberList.size());

for( Integer each : numberList ){
    System.debug(each);

}

// Create a List of String and add 4 items 
// use for each loop to iterate over them print it out 
List<String> roles = new List<String>(); 
roles.add('clock-master');
roles.add('screenshot-master');
roles.add('karate-girl');
roles.add('type-master');
// use for each loop to iterate over each item and print
for(String eachRole : roles){
    System.debug( eachRole ) ; 
}

//self exercise

List<String> nameList = new List<String>{'Shay',
                                         'Ronaldo',
                                         'Rashford',
                                         'Shaw',
                                         'Sancho'
};


for(String player : nameList){
    System.debug(  'This weekend player list : ' + player);
}

// create a list of Decimal and add 6 values in it
// iterate over each item and print it out

List<Decimal> prices = new List<Decimal>{9.99, 2.59, 3.14, 9.9, 10.5};
 
for( Decimal eachPrice : prices){
    System.debug('Price is : ' + eachPrice);
}

System.debug(prices);


