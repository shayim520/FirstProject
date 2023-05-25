/*
5. Create List of Opportunity 
   - Add 10 items in it with valid Opportunity required fields filled up 
      - Name,  Opp - 1(2,3,4,5..10)
      - ClosedDate (10 days from Today), 
      - StageName ='Prospecting', 
      - Amount  random Integer between 0-100000
   - insert the list into your org 

   - Create an Account with Name = 'Parent of Cool Opps'
   - insert into Salesforce org 

   - Create an empty List of Opportunity called coolOppsList
      - Loop through your entire List of 10 items 
      - If amount is greater than 60000
         - Update AccountId field to Id of Account you created earlier
         - Add the Opportunity to coolOppsList

   - Update the coolOppsList in your org 
   - Go to user interface and observe you have filled up Account Name field of all opportunities
     that has amount field over 60000 to 'Parent of Cool Opp'
*/

List<Opportunity> oppList = new List<Opportunity>();
for(Integer i=1; i<=10 ;i++) {
    Opportunity opp1 = new Opportunity();
    opp1.Name = 'Opp ' + i;
    opp1.CloseDate = Date.today().addDays(10);
    opp1.StageName = 'Prospecting';
    opp1.Amount = Math.round(Math.random()*100000);
    oppList.add(opp1);

}
System.debug(oppList); 
insert oppList;

Account acc = new Account(Name = 'Parent of Cool Opps');
insert acc;

List<Opportunity> coolOppsList = new List<Opportunity>();
for(Opportunity eachOpp : oppList) {
   if(eachOpp.Amount > 60000){

    eachOpp.AccountId = acc.Id;
    coolOppsList.add(eachOpp);

   }
}
    update coolOppsList;