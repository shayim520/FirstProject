/*
4. Create a Lead with required Fields filled up 
   - insert it into your org 
   - Create a variable with Task sObject type and assign the value 
   - fill up the below fields for this task
      - WhoId with the Id of the lead created above 
      - Priority 'High'
      - ActivityDate  Date 7 days from now 
*/

Lead Lead1 = new Lead(LastName = 'Young');
Lead1.Company = 'Avenger Coop';
Lead1.Status = 'Working - Contacted';

insert Lead1;

Task taskLead1 = new Task();
taskLead1.WhoId = Lead1.Id;
taskLead1.Priority = 'High';
taskLead1.ActivityDate = Date.today().addDays(7);
taskLead1.Subject = 'Follow up ' + Lead1.Company;

insert taskLead1;
