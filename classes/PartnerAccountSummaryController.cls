public class PartnerAccountSummaryController {
    
    public Account PartnerAccount{get;set;}
    public List<Opportunity> OpenOppsList{get;set;}
    public List<Lead> PendingDealReg{get;set;}
    public List<Opportunity> RenewalOppsList {get;set;}
    public PartnerAccountSummaryController()
    {
        PartnerAccount= new Account();
        string loggedinUser= UserInfo.getUserId();
        System.debug(loggedinUser);
        User usrDtl=[Select ContactId from User where Id=:loggedinUser LIMIT 1];
        if(usrDtl!=null && usrDtl.ContactId!=null)
        {
            Contact conDtl=[Select AccountId from Contact where Id=:usrDtl.ContactId];
            System.debug('Contact Detail'+conDtl);
            if(conDtl!=null && conDtl.AccountId!=null)
            {
                PartnerAccount = [Select Id,Name,Phone,Website,Industry,Fax,Partner_Type__c,OwnerId,ShippingStreet,ShippingCity,ShippingState,ShippingCountry,ShippingPostalCode,BillingStreet,BillingCity,BillingState,BillingCountry,BillingPostalCode from Account where Id=:conDtl.AccountId];
                OpenOppsList=[Select Id,Name,CloseDate,Owner.Name,StageName,Amount,ForecastCategoryName,Registering_Partner__r.Name,Registering_Partner_Sales_Rep__r.Name from opportunity where Registering_Partner__c=:PartnerAccount.Id and Type in ('New Business','Follow on Business')and IsClosed=false];
                PendingDealReg=[Select Id,Name,Company,Registered_Partner__r.Name,Registered_Partner_Sales_Rep__r.Name,Status,RSM__r.Name,CSM__r.Name,Registration_Expiration__c,Deal_ID__c from Lead where Registered_Partner__c=:PartnerAccount.Id and Status in ('Draft','Submitted') and LeadSource='Deal Registration'];
                RenewalOppsList=[Select Id,Name,CloseDate,Owner.Name,StageName,Amount,ForecastCategoryName,Registering_Partner__r.Name,Registering_Partner_Sales_Rep__r.Name,Next_Step_Reporting__c from opportunity where Registering_Partner__c=:PartnerAccount.Id and Type = 'Support Renewal' and IsClosed=false];
            }
        }
    }
    public PageReference RequestTrial()
    {
        return null;
    }
}