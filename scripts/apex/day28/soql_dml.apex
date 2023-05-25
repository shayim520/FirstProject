// Get all the book with no price set store it into he List
// Set all the price value to 999

List<Book__c> bookList = [SELECT Name, Price__c, Year__c FROM Book__c
                          WHERE Price__c = null ];
                      
// for(Book__c each : bookList) {
//     each.Price__c = 999;
// }

// // use dml to update
// update bookList;

// use dml to update
  // update bookLst; 
// you can only run this once
// because once you update price to 999 the query will return empty list

// Alternative approach:
// when we updated list of records, we got from SOQL or Trigger
// it's always best to create new Empty list to store updated content
// and do DML operation on that List

List<Book__c> updateList = new List<Book__c>();

for(Book__c each : bookList) {
    each.Price__c = 999;
 
 // add the record with updated field value into the updateLst
    updateList.add(each);

}
// perform DML operation on updateLst
//update updateList;

// we can delete existing record by SOQL query to get the records
// and delete DML operation
// for example : Delete all the Account record with name 'Acc from Apex'

List<Account> deleteList = [SELECT Id, Name
                           FROM Account WHERE Name = 'Sample Account  2'];

System.debug('deleted  accounts : ' + deleteList.size() );

//delete deleteList;

// result of [ SOQL QUERY ] is almost always List of sObject type
// if we do not need this List variable we can directly use it [SOQL]
// for example , print out all Book Name in your SF organization
// SELECT Name from Book__c

for(Book__c each : [SELECT Name from Book__c]    ) {
    System.debug('Book Name value : ' + each.Name  );
}

