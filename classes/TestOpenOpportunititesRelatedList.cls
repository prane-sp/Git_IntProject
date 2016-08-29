@IsTest
public class TestOpenOpportunititesRelatedList {
    
    @isTest
    public static void CheckPageName_OpenOpp()
    {
        Account acc = new Account(Name='testECPOC');
        insert acc;
        Account acc1 = new Account(Name='testACC');
        insert acc1;
        Contact contact = new Contact(FirstName = 'AcmeFirstname', LastName = 'AcmeLastname', Phone='123456789', Email = 'acme@acme.com' , accountId=acc.Id);
        insert contact;
        
        Opportunity opportunity = new Opportunity();
        opportunity.Name = 'acme';
        opportunity.AccountId = acc1.Id;
        opportunity.StageName = 'Discovery';
        opportunity.Dead_Reason__c = 'acme';
        opportunity.CloseDate = Date.today().addYears(1);
        opportunity.Type = 'New Business';
        opportunity.Opportunity_Source__c = 'Other';
        opportunity.POC_Type__c = 'POC';
        opportunity.Product_Type__c = 'Both';
        opportunity.Deal_Type__c = 'Replication';
        opportunity.Registering_Partner__c=acc.Id;
        opportunity.Registering_Partner_Sales_Rep__c=contact.Id;
        insert opportunity;
       
        PageReference pageRef= Page.ShowOpenOppRelatedListToPartner;
        Test.setCurrentPage(pageRef);
         ApexPages.StandardController stdController= new ApexPages.StandardController(acc);
        OpenOpportunitiesRelatedList obj= new OpenOpportunitiesRelatedList(stdController);
        System.assertEquals(1, obj.OpenOppsList.size());
        
    }
    
     @isTest(SeeAllData=true)
    public static void CheckPageName_RenewalOpp()
    {
          Account acc = new Account(Name='testECPOC');
        insert acc;
        Account acc1 = new Account(Name='testACC');
        insert acc1;
        Contact contact = new Contact(FirstName = 'AcmeFirstname', LastName = 'AcmeLastname', Phone='123456789', Email = 'acme@acme.com' , accountId=acc.Id);
        insert contact;
        Profile prof = [SELECT Id FROM Profile WHERE Name='5-SP Contract Mgr']; 
        User usr = new User(Alias = 'standt', Email='testUser@uniquetest.com', 
                            EmailEncodingKey='UTF-8', LastName='Testing', LanguageLocaleKey='en_US', 
                            LocaleSidKey='en_US', ProfileId = prof.Id, 
                            TimeZoneSidKey='America/Los_Angeles', UserName='testUser@uniquetest.com');
        
        usr.IsActive =true;
        insert usr;
        System.runAs(usr)
        {
      
        
        Opportunity opportunity = new Opportunity();
        opportunity.Name = 'acme';
        opportunity.AccountId = acc1.Id;
        opportunity.StageName = 'Discovery';
        opportunity.Dead_Reason__c = 'acme';
        opportunity.CloseDate = Date.today().addYears(1);
        opportunity.Type = 'Support Renewal';
        opportunity.Opportunity_Source__c = 'Other';
        opportunity.POC_Type__c = 'POC';
        opportunity.Product_Type__c = 'Both';
        opportunity.Deal_Type__c = 'Replication';
        opportunity.Registering_Partner__c=acc.Id;
        opportunity.Registering_Partner_Sales_Rep__c=contact.Id;
        insert opportunity;
       
        }
    
        PageReference pageRef= Page.ShowRenewalOppRelatedListToPartner;
        Test.setCurrentPage(pageRef);
         ApexPages.StandardController stdController= new ApexPages.StandardController(acc);
        OpenOpportunitiesRelatedList obj= new OpenOpportunitiesRelatedList(stdController);
        System.assertEquals(1, obj.RenewalOppsList.size());
        
    }
    
     @isTest
    public static void CheckPageName_OpenLeads()
    {
        Account acc = new Account(Name='testECPOC');
        insert acc;
      
        Contact contact = new Contact(FirstName = 'AcmeFirstname', LastName = 'AcmeLastname', Phone='123456789', Email = 'acme@acme.com' , accountId=acc.Id);
        insert contact;
        
        Lead lead = new Lead();
       
        lead.FirstName= 'acme';
        lead.LastName= 'acme';
        lead.Email= 'abc@abc.com';
        lead.Company= 'abcabc.com';
      	lead.leadSource='Deal Registration';
        lead.Registered_Partner__c=acc.Id;
        lead.Registered_Partner_Sales_Rep__c=contact.Id;
        lead.Status='Submitted';
        insert lead;
       
        PageReference pageRef= Page.ShowPendingDealRegToPartner;
        Test.setCurrentPage(pageRef);
        ApexPages.StandardController stdController= new ApexPages.StandardController(acc);
        OpenOpportunitiesRelatedList openOpps= new OpenOpportunitiesRelatedList(stdController);
        System.assertEquals(1, openOpps.PendingDealReg.size());
        
    }
}