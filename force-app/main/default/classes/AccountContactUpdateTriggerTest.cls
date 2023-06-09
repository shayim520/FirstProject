@isTest
private class AccountContactUpdateTriggerTest {
    

    @isTest
    static void testContactPhoneUpdateIfAccountPhoneUpdate(){
        
        // Arrange 
        // create 2 Account with 3 contacts using the method
        List<Account> accList = Utils.createAccountsWithContacts(2, 3) ; 

        //Act
        accList[0].Phone = '1223456797';
        accList[1].Phone = '785552122';
       Test.startTest();
        update accList;
        Test.startTest();

        // Assert
        // write a soql to get the contact under accList
        List<Contact> allContacts = [SELECT Phone, Account.Phone
                                     FROM Contact
                                     WHERE AccountId = : accList];
                
       for(Contact each : allContacts) {
        
        // Assert Account.Phone field = Contact Phone
        Assert.areEqual(each.Account.Phone, each.Phone);
        

       }
       
    
    
    }



}