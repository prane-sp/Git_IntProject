<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>EvalApproved</fullName>
        <ccEmails>notifications@silver-peak.com</ccEmails>
        <description>Eval Approved</description>
        <protected>false</protected>
        <recipients>
            <type>accountOwner</type>
        </recipients>
        <recipients>
            <field>Account_Manager_Email_1__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>Account_Manager_Email_2__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>SE_Email_Address__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>System_Engineer_Email_1__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>System_Engineer_Email_2__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>Tech_Responsible_Email__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <recipient>Systems Engineer</recipient>
            <type>opportunityTeam</type>
        </recipients>
        <senderAddress>notifications@silver-peak.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Support/New_ApprovedEvaluation_Request_VF</template>
    </alerts>
    <alerts>
        <fullName>EvalApprovedAllVirtual</fullName>
        <ccEmails>notifications@silver-peak.com</ccEmails>
        <description>Eval Approved - All Virtual</description>
        <protected>false</protected>
        <recipients>
            <type>accountOwner</type>
        </recipients>
        <recipients>
            <field>Account_Manager_Email_1__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>Account_Manager_Email_2__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>SE_Email_Address__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>System_Engineer_Email_1__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>System_Engineer_Email_2__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>Tech_Responsible_Email__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <recipient>Systems Engineer</recipient>
            <type>opportunityTeam</type>
        </recipients>
        <senderAddress>notifications@silver-peak.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>POC/EvalinQueue2_VF</template>
    </alerts>
    <alerts>
        <fullName>EvalApprovedtoShip</fullName>
        <ccEmails>notifications@silver-peak.com</ccEmails>
        <description>Eval Approved to Ship</description>
        <protected>false</protected>
        <senderAddress>notifications@silver-peak.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>POC/NeedAddlApprovalMade</template>
    </alerts>
    <alerts>
        <fullName>EvalApprovedtoShipAgain</fullName>
        <ccEmails>notifications@silver-peak.com</ccEmails>
        <description>Eval Approved to Ship Again</description>
        <protected>false</protected>
        <senderType>CurrentUser</senderType>
        <template>POC/NeedAddlApprovalMade</template>
    </alerts>
    <alerts>
        <fullName>EvalRequestscheduledforshipment</fullName>
        <ccEmails>notifications@silver-peak.com</ccEmails>
        <description>Eval Request scheduled for shipment</description>
        <protected>false</protected>
        <recipients>
            <type>accountOwner</type>
        </recipients>
        <recipients>
            <recipient>Account Manager</recipient>
            <type>accountTeam</type>
        </recipients>
        <recipients>
            <recipient>Systems Engineer</recipient>
            <type>accountTeam</type>
        </recipients>
        <recipients>
            <field>POC_Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <recipients>
            <field>Account_Manager_Email_1__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>Account_Manager_Email_2__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>SE_Email_Address__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>System_Engineer_Email_1__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>System_Engineer_Email_2__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>notifications@silver-peak.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>POC/Estimated_ShipmentVF</template>
    </alerts>
    <alerts>
        <fullName>NotifyRequestorofevaldenied</fullName>
        <ccEmails>notifications@silver-peak.com</ccEmails>
        <description>Notify Requestor of eval denied</description>
        <protected>false</protected>
        <recipients>
            <type>accountOwner</type>
        </recipients>
        <recipients>
            <recipient>Account Manager</recipient>
            <type>accountTeam</type>
        </recipients>
        <recipients>
            <recipient>Systems Engineer</recipient>
            <type>accountTeam</type>
        </recipients>
        <recipients>
            <field>Account_Manager_Email_1__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>Account_Manager_Email_2__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>System_Engineer_Email_1__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>System_Engineer_Email_2__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>notifications@silver-peak.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>POC/EvalRequestDenied</template>
    </alerts>
    <alerts>
        <fullName>POCExtensionApproved</fullName>
        <ccEmails>notifications@silver-peak.com</ccEmails>
        <description>POC Extension Approved</description>
        <protected>false</protected>
        <recipients>
            <type>accountOwner</type>
        </recipients>
        <recipients>
            <recipient>Account Manager</recipient>
            <type>accountTeam</type>
        </recipients>
        <recipients>
            <recipient>Systems Engineer</recipient>
            <type>accountTeam</type>
        </recipients>
        <recipients>
            <field>POC_Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <recipients>
            <field>Account_Manager_Email_1__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>Account_Manager_Email_2__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>SE_Email_Address__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>System_Engineer_Email_1__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>System_Engineer_Email_2__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>Tech_Responsible_Email__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <recipient>Systems Engineer</recipient>
            <type>opportunityTeam</type>
        </recipients>
        <senderAddress>notifications@silver-peak.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>POC/Extension_Approval</template>
    </alerts>
    <alerts>
        <fullName>POCExtensionDenied</fullName>
        <ccEmails>notifications@silver-peak.com</ccEmails>
        <description>Extension Denied</description>
        <protected>false</protected>
        <recipients>
            <type>accountOwner</type>
        </recipients>
        <recipients>
            <recipient>Systems Engineer</recipient>
            <type>accountTeam</type>
        </recipients>
        <recipients>
            <type>creator</type>
        </recipients>
        <recipients>
            <field>Account_Manager_Email_1__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>Account_Manager_Email_2__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>SE_Email_Address__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>System_Engineer_Email_1__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>System_Engineer_Email_2__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>Tech_Responsible_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>notifications@silver-peak.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>POC/Extension_Rejected</template>
    </alerts>
    <alerts>
        <fullName>Reminder_for_expired_POC</fullName>
        <ccEmails>notifications@silver-peak.com</ccEmails>
        <description>Reminder for expired POC</description>
        <protected>false</protected>
        <recipients>
            <recipient>Account Manager</recipient>
            <type>accountTeam</type>
        </recipients>
        <recipients>
            <recipient>Systems Engineer</recipient>
            <type>accountTeam</type>
        </recipients>
        <recipients>
            <field>POC_Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <recipients>
            <field>Account_Manager_Email_1__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>Account_Manager_Email_2__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>SE_Email_Address__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>System_Engineer_Email_1__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>System_Engineer_Email_2__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>notifications@silver-peak.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>POC/Virtual_POC_Expiration</template>
    </alerts>
    <alerts>
        <fullName>Reminder_for_expiring_POC_and_or_licenses</fullName>
        <ccEmails>notifications@silver-peak.com</ccEmails>
        <description>Reminder for expiring POC and/or licenses</description>
        <protected>false</protected>
        <recipients>
            <recipient>Account Manager</recipient>
            <type>accountTeam</type>
        </recipients>
        <recipients>
            <recipient>Systems Engineer</recipient>
            <type>accountTeam</type>
        </recipients>
        <recipients>
            <field>POC_Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <recipients>
            <field>Account_Manager_Email_1__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>Account_Manager_Email_2__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>SE_Email_Address__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>System_Engineer_Email_1__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>System_Engineer_Email_2__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>notifications@silver-peak.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>POC/Extension_Reminder</template>
    </alerts>
    <fieldUpdates>
        <fullName>ClearFirstExtension</fullName>
        <field>First_Extension_Granted__c</field>
        <literalValue>0</literalValue>
        <name>ClearFirstExtension</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>ClearSecondExtension</fullName>
        <field>Second_Extension_Granted__c</field>
        <literalValue>0</literalValue>
        <name>ClearSecondExtension</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Clear_Request_End_Date</fullName>
        <field>Requested_End_Date__c</field>
        <name>Clear Request End Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Clear_Sending_Reminder_Email</fullName>
        <field>Sending_Reminder_Email__c</field>
        <literalValue>0</literalValue>
        <name>Clear Sending Reminder Email</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Clear_Trigger_POC_value</fullName>
        <field>Trigger_POC_Email__c</field>
        <literalValue>0</literalValue>
        <name>Clear Trigger POC value</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Original_POC_End_Date_Time_Stamps</fullName>
        <field>Original_POC_End_Date__c</field>
        <formula>Requested_End_Date__c</formula>
        <name>Original POC End Date Time Stamps</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Requested_End_Date_Cleared</fullName>
        <description>Requested End Date cleared once extension approved.</description>
        <field>Requested_End_Date__c</field>
        <name>Requested End Date Cleared</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Send_Email_POC</fullName>
        <field>Send_Email__c</field>
        <literalValue>1</literalValue>
        <name>Send Email POC</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SetActualShipDate</fullName>
        <field>Actual_Ship_Date__c</field>
        <formula>today()</formula>
        <name>Set Actual Ship Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SetExtension2GrantedFlag</fullName>
        <field>Second_Extension_Granted__c</field>
        <literalValue>1</literalValue>
        <name>SetExtension2GrantedFlag</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SetExtensionGrantedFlag</fullName>
        <field>First_Extension_Granted__c</field>
        <literalValue>1</literalValue>
        <name>SetExtensionGrantedFlag</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SetPendingApprovals</fullName>
        <description>for add&apos;l SVP Approvals</description>
        <field>Status__c</field>
        <literalValue>Pending Approvals</literalValue>
        <name>SetPendingApprovals</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SetPendingReturn</fullName>
        <field>Status__c</field>
        <literalValue>Pending Return</literalValue>
        <name>SetPendingReturn</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SetRMAClosed</fullName>
        <field>Status__c</field>
        <literalValue>Closed - Returned</literalValue>
        <name>SetRMAClosed</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SetSEEmailFieldValue</fullName>
        <field>SE_Email_Address__c</field>
        <formula>TRLinkEmail__c</formula>
        <name>SetSEEmailFieldValue</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SetStatusApproved</fullName>
        <field>Status__c</field>
        <literalValue>Approved to Ship</literalValue>
        <name>SetStatusApproved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SetStatusExtended</fullName>
        <field>Status__c</field>
        <literalValue>Shipped - Extended</literalValue>
        <name>SetStatusExtended</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SetStatusOpen</fullName>
        <field>Status__c</field>
        <literalValue>Open</literalValue>
        <name>SetStatusOpen</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SetTREmail</fullName>
        <field>Tech_Responsible_Email__c</field>
        <formula>TR_Email__c</formula>
        <name>SetTREmail</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>TargetEndDateAdd60</fullName>
        <description>Add 60 days to target end date, if blank, today + 60</description>
        <field>Target_End_Date__c</field>
        <formula>if(   isblank(Target_End_Date__c) , today()+60,Target_End_Date__c + 60)</formula>
        <name>TargetEndDateAdd60</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>TargetEndDateadd30</fullName>
        <field>Target_End_Date__c</field>
        <formula>IF(ISBLANK(Requested_End_Date__c) || Target_End_Date__c = Requested_End_Date__c,
IF(ISBLANK(Target_End_Date__c) , TODAY()+Target_End_Date_Duration__c,Target_End_Date__c + Target_End_Date_Duration__c),
Requested_End_Date__c
)</formula>
        <name>TargetEndDateadd30</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>2Scheduled Eval Shipment</fullName>
        <active>false</active>
        <description>Note sent to account manager when schedule ship date is entered</description>
        <formula>AND ( ISCHANGED( Estimated_Ship_Date__c ) ,  Estimated_Ship_Date__c &lt;&gt; PRIORVALUE( Estimated_Ship_Date__c ))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Clear Request End DateTillNotShippedPOCS</fullName>
        <actions>
            <name>Clear_Request_End_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Request__c.Requested_End_Date__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Request__c.Status__c</field>
            <operation>equals</operation>
            <value>Open,Approved to Ship,Pending Approvals</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Eval Approved to Ship</fullName>
        <actions>
            <name>EvalApprovedtoShip</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Request__c.Status__c</field>
            <operation>equals</operation>
            <value>Approved to Ship</value>
        </criteriaItems>
        <criteriaItems>
            <field>Request__c.Type__c</field>
            <operation>equals</operation>
            <value>Evaluation</value>
        </criteriaItems>
        <criteriaItems>
            <field>Request__c.IsAllVirtual__c</field>
            <operation>equals</operation>
            <value>0</value>
        </criteriaItems>
        <description>Evaluation is approved for shipment</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Eval Closed</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Request__c.Status__c</field>
            <operation>equals</operation>
            <value>Closed-Shipped</value>
        </criteriaItems>
        <criteriaItems>
            <field>Request__c.Type__c</field>
            <operation>equals</operation>
            <value>Evaluation</value>
        </criteriaItems>
        <description>When an eval is closed (denied or shipped), notify requestor</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Eval Request Denied</fullName>
        <actions>
            <name>NotifyRequestorofevaldenied</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Request__c.Status__c</field>
            <operation>equals</operation>
            <value>Closed - Denied</value>
        </criteriaItems>
        <criteriaItems>
            <field>Request__c.Type__c</field>
            <operation>equals</operation>
            <value>Evaluation</value>
        </criteriaItems>
        <description>Notify requestor when an evaluation request is denied</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>New Discount has Been Created</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Request__c.Status__c</field>
            <operation>equals</operation>
            <value>Open</value>
        </criteriaItems>
        <criteriaItems>
            <field>Request__c.Type__c</field>
            <operation>equals</operation>
            <value>Discount</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>New Evaluation has Been Created</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Request__c.Status__c</field>
            <operation>equals</operation>
            <value>Open</value>
        </criteriaItems>
        <criteriaItems>
            <field>Request__c.Type__c</field>
            <operation>equals</operation>
            <value>Evaluation</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>New WanEm Request</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Request__c.Status__c</field>
            <operation>equals</operation>
            <value>Open</value>
        </criteriaItems>
        <criteriaItems>
            <field>Request__c.Type__c</field>
            <operation>equals</operation>
            <value>Wan Emulator</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>OpportunityOwner</fullName>
        <actions>
            <name>SetTREmail</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>NOT ISNULL(Opportunity__c )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Original POC End Date Time Stamps</fullName>
        <actions>
            <name>Original_POC_End_Date_Time_Stamps</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Request__c.Requested_End_Date__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Request__c.Status__c</field>
            <operation>equals</operation>
            <value>Shipped</value>
        </criteriaItems>
        <description>Time stamp of End Date before extensions granted</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>POC Expired -Not All Virtual</fullName>
        <actions>
            <name>Clear_Sending_Reminder_Email</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Request__c.Sending_Reminder_Email__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Request__c.Target_End_Date__c</field>
            <operation>lessOrEqual</operation>
            <value>TODAY</value>
        </criteriaItems>
        <criteriaItems>
            <field>Request__c.IsAllVirtual__c</field>
            <operation>equals</operation>
            <value>0</value>
        </criteriaItems>
        <description>Clear Email Sending Flag set by automated monitoring class
Eval RMA opened by trigger on status change to pending return (set by monitoring class)</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>POC Expired Notification</fullName>
        <actions>
            <name>Reminder_for_expired_POC</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Clear_Sending_Reminder_Email</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>SetRMAClosed</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Request__c.Sending_Reminder_Email__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Request__c.Target_End_Date__c</field>
            <operation>lessOrEqual</operation>
            <value>TODAY</value>
        </criteriaItems>
        <criteriaItems>
            <field>Request__c.IsAllVirtual__c</field>
            <operation>equals</operation>
            <value>1</value>
        </criteriaItems>
        <description>This notice and field updates are sent for all virtual POC&apos;s upon reaching the target end date. The flag to trigger this is set by automated monitoring class</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>POC Expiring Notification</fullName>
        <actions>
            <name>Reminder_for_expiring_POC_and_or_licenses</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Clear_Sending_Reminder_Email</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Request__c.Sending_Reminder_Email__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Request__c.Target_End_Date__c</field>
            <operation>greaterThan</operation>
            <value>TODAY</value>
        </criteriaItems>
        <description>This notice and field updates occur for all POC&apos;s when they are ten days from their target end date. The flag to trigger this is set by an automated monitoring class</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Requested End Date Cleared</fullName>
        <actions>
            <name>Requested_End_Date_Cleared</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Request__c.First_Extension_Granted__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Requested End Date is cleared when a POC Extension is granted.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Requested End Date Cleared for Second POC Entension</fullName>
        <actions>
            <name>Requested_End_Date_Cleared</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Request__c.Second_Extension_Granted__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Requested End Date is cleared when a POC Extension is granted for a second Entension</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Scheduled Eval Shipment</fullName>
        <actions>
            <name>EvalRequestscheduledforshipment</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Note sent to account manager when schedule ship date is entered</description>
        <formula>ISCHANGED( Estimated_Ship_Date__c )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>SetSEEmailFieldValue</fullName>
        <actions>
            <name>SetSEEmailFieldValue</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>LastModifiedDate &gt; CreatedDate</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>TriggerVXFulfillmentEmail_POC</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Request__c.Trigger_POC_Email__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Request__c.Send_Email__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Request__c.POC_Type__c</field>
            <operation>equals</operation>
            <value>WAN Op</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Clear_Trigger_POC_value</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>Send_Email_POC</name>
                <type>FieldUpdate</type>
            </actions>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>UponShipmentSetTargetEndDate</fullName>
        <actions>
            <name>SetActualShipDate</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Request__c.Status__c</field>
            <operation>equals</operation>
            <value>Shipped</value>
        </criteriaItems>
        <criteriaItems>
            <field>Request__c.IsAllVirtual__c</field>
            <operation>equals</operation>
            <value>1</value>
        </criteriaItems>
        <description>Set Target End Date upon Shipment. Trigger 50 days later a reminder email</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <timeLength>50</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
</Workflow>
