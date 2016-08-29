/*
 * Auto-populate some fields on deal reg and submit if the trigger_submission flag is checked
 */
trigger ProcessDealReg on Lead (before insert, before update, after insert, after update) 
{
    if(Trigger.isBefore)
    {
        Set<Id> userIds = new Set<Id>();
        for(Lead newLead : Trigger.new)
        {
            if(newLead.Deal_Reg__c == true)
            {
                userIds.add(newLead.CreatedById);
            }
        }
        userIds.add('005W0000001KS8w');
        Map<Id, User> portalUsers = new Map<Id, User>([select Id, ContactId, Contact.AccountId from User where Id in :userIds and ContactId!=null]);
        for(Lead newLead : Trigger.new)
        {
            if(portalUsers.containsKey(newLead.CreatedById))
            {
                if(newLead.Registered_Partner__c == null)
                {
                    newLead.Registered_Partner__c = portalUsers.get(newLead.CreatedById).Contact.AccountId;
                }
                if(newLead.Registered_Partner_Sales_Rep__c == null)
                {
                    newLead.Registered_Partner_Sales_Rep__c = portalUsers.get(newLead.CreatedById).ContactId;
                }
            }
        }
    }
    else if(Trigger.isAfter)
    {
        List<Id> leadIds = new List<Id>();
        if(Trigger.isInsert)
        {
            for(Lead newLead : Trigger.new)
            {
                if(newLead.Trigger_Submission__c == true)
                {
                    leadIds.add(newLead.Id);
                }
            }
        }
        else if(Trigger.isUpdate)
        {
            for(Lead newLead : Trigger.new)
            {
                Lead oldLead = Trigger.oldMap.get(newLead.Id);
                if(newLead.Trigger_Submission__c == true && oldLead.Trigger_Submission__c == false)
                {
                    leadIds.add(newLead.Id);
                }
            }
        }
        for(Id leadId : leadIds)
        {
            submitLead(leadId);
        }
    }
    
    private void submitLead(Id leadId)
    {
        try
        {
            Approval.ProcessSubmitRequest request = new Approval.ProcessSubmitRequest();
            request.setComments('User submit.');
            request.setObjectId(leadId);
            Approval.process(request);
        }
        catch(Exception ex)
        {
        }
    }
}