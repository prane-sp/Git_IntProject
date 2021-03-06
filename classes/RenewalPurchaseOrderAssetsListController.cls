public class RenewalPurchaseOrderAssetsListController
{
 public RenewalPurchaseOrderAssetsListController()
    {
    }
    
    public boolean IsEdgeConnect{ get; set; }
     public Id AccId{ get; set; }
    public Date DefaultDate
    { 
        get{
                return Date.today();
            }
    }
   
    public List<Asset> Assets
    {
        get
        {
            List<Asset>lstAssets= new List<Asset>();
            if(IsEdgeConnect)
            {
                lstAssets=[select Id, Name, Model__c,SerialNumber,Licenses_Nodes__c,Bandwidth_Nodes__c,License_End_Date__c,EC_Product_Name__c,Renewal_Start_Date__c from Asset where AccountId=:AccId and Is_Selected_For_Renewal__c=true];
            }
            else
            {
                 lstAssets=[select Id, Name, Model__c,SerialNumber,Licenses_Nodes__c,Bandwidth_Nodes__c,License_End_Date__c,EC_Product_Name__c,Renewal_Start_Date__c from Asset where AccountId=:AccId and Is_Selected_For_Renewal__c=true];
            }
            
            return lstAssets;
        }
    }
}