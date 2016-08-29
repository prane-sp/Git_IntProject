/*Its one time batch to update the Active Asset count*/
public class UpdateAssetCountBatch implements Schedulable, Database.Batchable<sObject>, Database.Stateful {
    public void execute(SchedulableContext context)
    {
        Database.executeBatch(new UpdateAssetCountBatch(), 25);
    }
    
    public Database.QueryLocator start(Database.BatchableContext context)
    {
        return Database.getQueryLocator([Select Id, Name,Type,Active_Asset_Count__c, (Select Id from Assets where  Status in ('Customer Owned','Customer Subscription Active','Customer Subscription')) from Account]);
    }
    
    public void execute(Database.BatchableContext context, List<sObject> scope)
    {
        List<Account> lstAccountToUpdate= new List<Account>();
        List<Account> lstAccount = (List<Account>)scope;
       
        if(lstAccount!=null && lstAccount.size()>0)
        {
            for(Account acc:lstAccount)
            {
                List<Asset> lstAssets=acc.Assets;
                acc.Active_Asset_Count__c= (lstAssets!=null && lstAssets.size()>0) ? lstAssets.size():0;
                lstAccountToUpdate.add(acc);
            }
            if(lstAccountToUpdate.size()>0)
            {
                update lstAccountToUpdate;
            }
        }
        
    }
    
    public void finish(Database.BatchableContext context)
    {
        
    }
    
}