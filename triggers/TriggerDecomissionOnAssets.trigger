trigger TriggerDecomissionOnAssets on Asset (after update) {
    List<Asset> assetIds= new List<Asset>();
    Set<Id> oldAcctIds= new Set<Id>();
    List<Account> spAccount=[select Id from Account where Name='Silver Peak Systems'];
    for(Asset item : Trigger.new)
    {
        Asset oldAsset = Trigger.oldMap.get(item.Id);
        if(spAccount!=null && spAccount.size()>0)
        {
            if(item.AccountId == spAccount[0].Id && oldAsset.AccountId != item.AccountId)
            {
                oldAcctIds.add(oldAsset.AccountId);
                
            }
        }
    }
    if(oldAcctIds.size()>0)
    {
        assetIds.addAll([select Id from Asset where AccountId in:oldAcctIds and Product2.family='Product' and Product2.Name like 'EC%' and status not in('Silver Peak Inventory')]);
    }
    if(assetIds.size()>0)
    {
        for(Asset item: assetIds)
        {
            item.Cloud_Portal_Sync_Status__c='Pending';
            item.Sync_With_Cloud_Portal__c=true;
            //assetIdsToUpdate.add(asset);
        }
        
        update assetIds;
    }
}