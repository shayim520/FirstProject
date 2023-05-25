/**

Declare List variable initilize it's value 
and add all the items in one shot 

List<DataType> lstName 
        = new List<DataType>{item1, item2,.....itemN} ; 

 */


List<String> groceries = new List<String>{'Milk','Bread','Egg','Coffee'};

System.debug(groceries);

// create List of Integer and add 5 values in one shot 
List<Integer> level = new List<Integer>{20,30,40,50,60};
System.debug(level);
// create List of Decimal and add 5 values in one shot 
List<Decimal> bookpeices = new List<Decimal>{35.25,9.89,10.99,225,75,6.99};
System.debug(bookpeices);
// create List of Id and  and add 5 values in one shot
List<Id> studentId = new List<Id>{'0018W0000251OK6QAM', 
                                  '0018W0000251OK6QAT', 
                                  '0018W0000251OK6QAY', 
                                  '0018W0000251OK6QAZ', 
                                  '0018W0000251OK6QAA'};
System.debug(studentId);

// create a List of Boolean add 5 items into it 
List<Boolean> answers = new List<Boolean>{true,false,true,true,false};

System.debug(answers);




