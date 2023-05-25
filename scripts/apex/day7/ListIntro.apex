/**
Collection : for storing more than one values 
There are 3 types of collection 

List : ordered collection to store multiple values of same type 
Set  : unordered collection to store multiple unique values of same type removing
Map  : store key value pair in each element (more on that later)
 */

 // Syntax for Creating a list variable
 // and initializing it's value 

 // List< DataType > nameOfYourVariable 
            // = new List< DataType >(); 

 List<String> studentNames = new  List<String>() ; 
 

// we can use yourListVariable.add(what You want to add here) ; 
// to add elements into the List
 
 studentNames.add('Nurzat');
 studentNames.add('Shay');
 studentNames.add('Ali');

System.debug(studentNames);

/**
Create a List of Integer with name scores
and add 5 items in it  
 */

List <Integer> scores = new List<Integer>();
scores.add(100);
scores.add(200);
scores.add(300);
scores.add(400);
scores.add(500);
System.debug(scores);
Integer count = scores.size();
System.debug(count);


List<Decimal> prices = new List<Decimal>();
prices.add(89.79);
prices.add(109.79);
prices.add(268.79);
prices.add(225.59);
prices.add(9.99);
prices.add(7.69);

System.debug(prices);