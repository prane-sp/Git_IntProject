/*
 * Controller for page UpcomingEventsCustomer
 */
public class UpcomingEventsCustomerController extends UpcomingEventsController
{
    public UpcomingEventsCustomerController()
    {
    }

    public override List<Training_Events__c> getEventsRecords()
    {
        return [select Id, Start_Date__c, End_Date__c, Location__c, Openings__c, Session_Times__c, Maximum_Attendees__c, Confirmed_Registrations__c, Registered_Attendees__c, Course_Name__r.Name, Course_Name__r.Description__c from Training_Events__c where Start_Date__c>:Date.today() and Hide_Event__c=false and RecordType.Name='Customer' order by Start_Date__c];
    }
    
    @isTest
    public static void testUpcomingEventsController()
    {
        List<RecordType> recordTypes = [select Id from RecordType where Name='Customer' and SObjectType='Training_Events__c' limit 1];
        if(recordTypes.size() > 0)
        {
            Training_Events__c event = new Training_Events__c(Start_Date__c=Date.today().addDays(1), RecordTypeId=recordTypes[0].Id);
            insert event;
            UpcomingEventsCustomerController controller = new UpcomingEventsCustomerController();System.assert(controller.AllEvents.size() > 0);
        }
    }
}