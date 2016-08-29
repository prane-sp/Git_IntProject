trigger CheckECSPEnabledonEnterpriseAccounts on Account (before update) {
   for(Account acc: Trigger.New) 
   {
      
       Account oldAcc= Trigger.OldMap.get(acc.Id);
       if(oldAcc.ECSP__c!=acc.ECSP__c)
       {
           if(acc.Cloud_Portal_Account_Id__c!=null || acc.Cloud_Portal_Account_Key__c!=null || acc.Cloud_Portal_Account_Name__c !=null)
           {
               acc.addError('You cannot modify ECSP flag at this point of time. Please contact operations.');
           }
           else
           {
               List<Asset> lstAssets=[Select Id from Asset where AccountId=:acc.Id and Status in ('Customer Evaluation')];
               if(lstAssets.size()>0)
               {
                   acc.addError('You cannot modify ECSP flag at this point of time. Please contact operations.');
               }
               
           }
       }
   }
    

}