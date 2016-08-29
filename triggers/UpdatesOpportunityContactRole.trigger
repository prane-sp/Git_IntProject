/*
 * Updates role field on contact role after opportunity is updated or created
 */
trigger UpdatesOpportunityContactRole on Opportunity (after insert, after update) 
{
    List<OpportunityContactRole> oppCR = [select id, role from OpportunityContactRole where opportunityid in :Trigger.new];
    for(OpportunityContactRole a : oppCR)
    {
        if(a.Role == '' || a.Role == null)
        {
            a.Role = 'Contact';
        }
    }
    
    update oppCR;
}