// ## Task 3 Apex SOQL : 

// Get the Id of Account with name Super Parent.
// Get all the Opportunities with no Parent Account association (AccountId is empty)
// and store it in the list called orphanOpps. 
// Add All the orphanOpps under Account with name Super Parent.

//Account supeAcc = [SELECT Id FROM Account WHERE Name = 'Super Parent' LIMIT 1];
//Id supeAccId = supeAcc.Id;

Id supeAccId = [SELECT Id FROM Account WHERE Name = 'Super Parent' LIMIT 1].Id;

List<Opportunity> orphanOpps = [SELECT Name FROM Opportunity WHERE AccountId = null];

// Add All the orphanOpps under Account with name Super Parent.
for(Opportunity each : orphanOpps) {
    each.AccountId = supeAccId;
    
}
    //update orphanOpps;


