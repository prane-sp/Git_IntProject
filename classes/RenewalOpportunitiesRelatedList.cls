public class RenewalOpportunitiesRelatedList {
 private  final Account acctId;
    public List<Opportunity> OppsList {get;set;}
    public RenewalOpportunitiesRelatedList(ApexPages.StandardController stdController)
    {
        acctId=(Account) stdController.getRecord();
        OppsList= new List<Opportunity>();
        OppsList=[Select Id,Name,Account.Id,Account.Name,Account.Site,CloseDate,StageName,ForecastCategoryName,Primary_Partner__r.Name,Registered_Partner__r.Name from opportunity where Registering_Partner__c=:acctId.Id and Type in ('Support Renewal')and IsClosed=false];
    }
}