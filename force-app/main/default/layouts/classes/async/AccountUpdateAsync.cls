public class AccountUpdateAsync implements Queueable{

    String description;
    List<Account> aacLstToProcess;
    
    
    public AccountUpdateAsync(String description, List<Account> aacLstToProcess) {
        this.description = description;
        this.aacLstToProcess = aacLstToProcess;

    }

    public void execute(QueueableContext context) {
        // awesome code here
        System.debug('Running some awesome code in AccountUpdateAsync'); 
        //Print out value of description field
        System.debug('description value is : ' + this.description); 
        
        // update the description field of the List of account to 
        // the description provided.
        for(Account each : aacLstToProcess) {
            each.Description = this.description;
        }
        update aacLstToProcess;

        //RIGHT AFTER WE ARE DONE WITH ACCOUNT UPDATE
        //we want to perform another aysnc code
        //that need to happen right after account update
        
        TaskAfterAccountUpdate tq = new TaskAfterAccountUpdate();
        System.enqueueJob(tq);

    }
}