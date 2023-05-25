@isTest
private class AccountControllerTest {
  @isTest(SeeAllData= true)
  static void testDifferentUserAccessRecord() {
    //Create a user with Standard User Profile
    //unique userName
    //profile Id
    //all the User Object details that required (will copy from the example)

    String uniqueUserName =
      'Shay' +
      DateTime.now().getTime() +
      '@sftestorg.com';
    // profile Id
    Profile p = [
      SELECT Name, Id
      FROM Profile
      WHERE Name = 'Standard User'
      LIMIT 1
    ];
  // all the User Object details that required (will copy from the example)
    User u = new User(
      Alias = 'js',
      Email = 'standarduser@testorg.com',
      EmailEncodingKey = 'UTF-8',
      LastName = 'Testing',
      LanguageLocaleKey = 'en_US',
      LocaleSidKey = 'en_US',
      ProfileId = p.Id,
      TimeZoneSidKey = 'America/Los_Angeles',
      UserName = uniqueUserName
    );
    // Print out currently logged in user name
    System.debug('UserInfo.getName() value is : ' + UserInfo.getName());
    List<Account> allAccounts1 = AccountController.getAllAccounts();
    System.debug('allAccounts1 value is : ' + allAccounts1.size());
    
    
    // Run as newly user and print out username
System.runAs(u){
    System.debug('UserInfo.getName() value is : ' + UserInfo.getName());
    List<Account> allAccounts2 = AccountController.getAllAccounts();
    System.debug('allAccounts2 value is : ' + allAccounts2.size());
}

    //run as this user
    //print out the detail of current user
  }
}
