
List<Account> myList = [SELECT Id, Name 
                        FROM Account
                        WHERE Name LIKE 'Cool%'];

System.debug('Running Apex - anon  Code'); 


AccountUpdateAsync q = new AccountUpdateAsync('From queueble Job', myList);
System.enqueueJob(q);

