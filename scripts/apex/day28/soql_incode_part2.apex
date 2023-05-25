// Get 1 Account Record (Name, AnnualRevenue, Rating)
// SELECT Name, AnnualRevenue, Rating FROM Account LIMIT 1
// and Store it into Account variable

// Apex and SOQL Work seamlessly together 
// We can use SOQL to get data and store it into 
// sObject type or list of sObject type
// [ YOUR SOQL GOES HERE]

// This will throw an error since we are trying to store many Account
// into a variable that hold single account
//System.QueryException: List has more than 1 row for assignment to SObject
 //AnonymousBlock: line 14, column 1
//Account a = [Select Name From Account];
//System.debug('a value is : ' + a);

String str = 'Green';
// Get all the Contact FirstName, LastName 
// if the LastName field value is whatever variable str has

//SELECT FirstName, LastName
//FROM Contact
//WHERE LastName = 'Green'

List<Contact> ContactList = [Select FirstName, LastName From Contact
                              Where LastName = :str];
System.debug('ContactList value is : ' + ContactList);

// Create 2 String variables for caseStatus and casePriority
// Get All the cases with status of caseStatus and Priority of casePriority
// Store the result in List of Case

String CaseStatus = 'Closed';
String casePriority = 'High';

List<Case> caseList = [SELECT Subject, Status, Priority FROM CASE
WHERE Status = :CaseStatus AND Priority = :casePriority];
// print out Subject, Status, Priority for each Case
for(Case each : caseList) {
    System.debug('------------------');
    System.debug(each.Subject + '----' + each.Status + '---' + each.Priority); 
    
}
    

