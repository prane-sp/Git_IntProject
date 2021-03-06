@IsTest
public class TestCheckECSPEnabledonEnterAcc {
    
    @IsTest
    public static void ECSPFlag_AccountSyncedinCP()
    {
        Account acc=new Account(Name='Test',Cloud_Portal_Account_Name__c='Test',ECSP__c=true);
        insert acc;
        
        acc.ECSP__c=false;
        try
        {
            update acc;
        }
        catch(Exception ex)
        {
            Boolean expectedExceptionThrown =  ex.getMessage().contains('You cannot modify ECSP flag at this point of time. Please contact operations.') ? true : false;
			System.AssertEquals(expectedExceptionThrown, true);
        }
    }
 	@IsTest
    public static void ECSPFlag_AccountAssetsCreated()
    {
        Account acc=new Account(Name='Test',ECSP__c=true);
        insert acc;
       	Product2 product = new Product2(Name='EC-BASE-1Y', Family='Virtual Image', Product_Category__c='Subscription', IsActive=true);
        insert product;
        Asset asset1 = new Asset(Name='T-30', AccountId=acc.Id, Product2Id=product.Id,Status='Customer Evaluation');
        insert asset1;
        acc.ECSP__c=false;
        try
        {
            update acc;
        }
        catch(Exception ex)
        {
            Boolean expectedExceptionThrown =  ex.getMessage().contains('You cannot modify ECSP flag at this point of time. Please contact operations.') ? true : false;
			System.AssertEquals(expectedExceptionThrown, true);
        }
    }
    
    @IsTest
    public static void AllowECSPFlagChange()
    {
        Account acc=new Account(Name='Test',ECSP__c=true);
        insert acc;
        acc.ECSP__c=false;

        try
        {
            update acc;
        }
        catch(Exception ex)
        {
            Boolean expectedExceptionThrown =  ex.getMessage().contains('You cannot modify ECSP flag at this point of time. Please contact operations.') ? true : false;
			System.AssertEquals(expectedExceptionThrown, true);
        }
    }
}