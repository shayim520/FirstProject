public static void handleAfterUndelete(List<Book__c> bookLst){

    // UserInfo class can be used to get information about current loggedin user
    // it has many static methods to extract information about user
    // including getting the userId, firstname, lastname ,emails and so on 
    // with method with getXXX format 
    String UserEmail = UserInfo.getUserEmail();
    String body = 'Make sure this book supposed to be restored ';
   
   for(Book__c each : bookLst) {

    String subject = each.Name+ ' Book has been restored';

   EmailManager.sendMail(UserEmail,  subject, body);

  }
  
 

}
