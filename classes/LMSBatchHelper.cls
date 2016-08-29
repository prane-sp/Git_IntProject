public class LMSBatchHelper {
    
    public static void InsertCertificationData(Map<Id,List<PartnerPortalCertificate>> mapCertificates )
    {
        List<LMS_Course_Certification__c> lstCertToInsert= new List<LMS_Course_Certification__c>();
        if(mapCertificates!=null && mapCertificates.size()>0)
        {
            for(Id courseId:mapCertificates.keySet())
            {
                List<PartnerPortalCertificate> lstCerts = mapCertificates.get(courseId);
                for(PartnerPortalCertificate cert:lstCerts)
                {
                    LMS_Course_Certification__c sfCertData= new LMS_Course_Certification__c();
                    sfCertData.Certification_ID__c= cert.Id;
                    sfCertData.Course_Id__c= cert.courseId;
                    sfCertData.URI__c= cert.Uri;
                    sfCertData.Status_Display_Name__c='Sync Pending';
                    sfCertData.LMS_Course_Id__c= courseId;
                    lstCertToInsert.add(sfCertData);
                }
            }
            
            if(lstCertToInsert.size()>0)
            {
                insert lstCertToInsert;
            }
        }
    }
    
    
    
    public static void AssociateContactwithEachCertUsingStudentId()
    {
        // select all certificates where contact is null
        List<LMS_Course_Certification__c> lstCert=[Select Id,Learner_Contact__c,Student_Id__c,Student_Email__c from LMS_Course_Certification__c where Learner_Contact__c=null];
        List<String> lstStudentIds= new List<String>();
        Map<string,Id> mapContact= new Map<string,Id>();
        Map<string,string> mapContactEmail= new Map<string,string>();
        List<LMS_Course_Certification__c> lstCertToUpdate= new List<LMS_Course_Certification__c>();
        if(lstCert!=null && lstCert.size()>0)
        {
            for(LMS_Course_Certification__c item : lstCert)
            {
                lstStudentIds.add(string.valueof(item.Student_Id__c));
            }
            List<Partner_Contact_Profile__c> lstPartnerProfile=  [Select Contact__c,LmsUserId__c,Contact__r.Email from Partner_Contact_Profile__c where LmsUserId__c in:lstStudentIds];
            if(lstPartnerProfile!=null && lstPartnerProfile.size()>0)
            {
                
                for(Partner_Contact_Profile__c partInfo : lstPartnerProfile)
                {
                    mapContact.put(partInfo.LmsUserId__c,partInfo.Contact__c);
                    mapContactEmail.put(partInfo.LmsUserId__c,partInfo.Contact__r.Email);
                }
                for(LMS_Course_Certification__c item : lstCert)
                {
                    item.Learner_Contact__c= mapContact.get(string.valueOf(item.Student_Id__c));
                    if(item.Student_Email__c==null)
                    {
                    	item.Student_Email__c= mapContactEmail.get(string.valueOf(item.Student_Id__c));
                    }
                    lstCertToUpdate.add(item);
                }
                
                if(lstCertToUpdate.size()>0)
                { update lstCertToUpdate;}
            }
        }
        
    }
    public static void PopulateAccountForContact()
    {
        List<LMS_Course_Certification__c> lstCert=[Select Id,Learner_Contact__c,Learner_Contact__r.AccountId,Learner_Account__c from LMS_Course_Certification__c where Learner_Contact__c!=null and Learner_Account__c=null];
        if(lstCert!=null && lstCert.size()>0)
        {
            for(LMS_Course_Certification__c cert: lstCert)
            {
                if(cert.Learner_Contact__r.AccountId!=null)
                {
                    cert.Learner_Account__c= cert.Learner_Contact__r.AccountId;
                }
            }
            
            update lstCert;
        }
    }
    public static void AssociateContactwithEachCertUsingStudentEmail()
    {
        // select all certificates where contact is null
        List<LMS_Course_Certification__c> lstCert=[Select Id,Learner_Contact__c,Student_Id__c,Student_Email__c from LMS_Course_Certification__c where Learner_Contact__c=null];
        Set<String> lstStudentEmails= new Set<String>();
        Map<string,string> mapContactEmail= new Map<string,string>();
        List<LMS_Course_Certification__c> lstCertToUpdate= new List<LMS_Course_Certification__c>();
        if(lstCert!=null && lstCert.size()>0)
        {            
            for(LMS_Course_Certification__c item : lstCert)
            {
                lstStudentEmails.add(string.valueof(item.Student_Email__c));
            }
            List<Contact> lstContactProfile=  [Select Id,Email from Contact where Email in:lstStudentEmails];
            if(lstContactProfile!=null && lstContactProfile.size()>0)
            {
                
                for(Contact partInfo : lstContactProfile)
                {
                    mapContactEmail.put(partInfo.Email,partInfo.Id);
                }
                for(LMS_Course_Certification__c item : lstCert)
                {
                    if(item.Student_Email__c!=null && !String.isBlank(item.Student_Email__c))
                    { 
                        item.Learner_Contact__c= mapContactEmail.get(string.valueOf(item.Student_Email__c));
                        lstCertToUpdate.add(item);
                    }
                    
                }
                if(lstCertToUpdate.size()>0)
                { update lstCertToUpdate;}
                
            }
        }
        
    }
    
    
}