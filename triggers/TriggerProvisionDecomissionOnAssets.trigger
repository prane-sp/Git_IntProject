trigger TriggerProvisionDecomissionOnAssets on Asset (after insert,after update) {
    List<Asset> assetIds= new List<Asset>();
    List<Account> assetAcctIds= new List<Account>();
    Set<Id> oldAcctIds= new Set<Id>();
    
    for(Asset toUpdateAsset:[Select Id,Sync_With_Cloud_Portal__c,Status,AccountId from Asset where Id in: trigger.NewMap.keyset() and Product2.Family ='Product' and Product2.Name like 'EC%'])
    {
        if(Trigger.isInsert)
        {
            oldAcctIds.add(toUpdateAsset.AccountId);
        }
        else if(Trigger.isUpdate)
        {
            List<Account> spAccount=[select Id from Account where Name='Silver Peak Systems'];
            Asset oldAsset = Trigger.oldMap.get(toUpdateAsset.Id);
            // decommission asset
            if(spAccount!=null && spAccount.size()>0)
            {
                if(toUpdateAsset.AccountId == spAccount[0].Id && oldAsset.AccountId != toUpdateAsset.AccountId)
                {
                    oldAcctIds.add(oldAsset.AccountId);
                }
                //provision an existing asset to another account
                if(oldAsset.AccountId != toUpdateAsset.AccountId && oldAsset.AccountId == spAccount[0].Id && oldAsset.Status =='Silver Peak Inventory')
                {
                     oldAcctIds.add(toUpdateAsset.AccountId);
                }
            }
            
        }
        
    }
    if(oldAcctIds.size()>0)
    {
        assetIds.addAll([select Id from Asset where AccountId in:oldAcctIds and Product2.family='Product' and Product2.Name like 'EC%' and status not in ('Silver Peak Inventory','Write-Off','Obsolete RMA Unit–Supp Transferred–WO')]);
    }
    if(assetIds.size()>0)
    {
        for(Asset item: assetIds)
        {
            item.Cloud_Portal_Sync_Status__c='Pending';
            item.Sync_With_Cloud_Portal__c=true;
            
        }
        
        update assetIds;
    }
    for(Id acctId:oldAcctIds)
    {
        assetAcctIds.add(new Account(Id=acctId,Sync_With_Cloud_Portal__c=true));
    }
    if(assetAcctIds.size()>0)
    {
        update assetAcctIds;
    }
}