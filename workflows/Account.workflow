<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Account_Partner_Application_Approved</fullName>
        <ccEmails>silverpeak@snapbi.com</ccEmails>
        <description>Account: Partner Application Approved</description>
        <protected>false</protected>
        <recipients>
            <field>Primary_Partner_Contact_E_Mail_Address__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>silverpeakinfo@silver-peak.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Partner_Account_Templates/Partner_Application_Approved</template>
    </alerts>
    <alerts>
        <fullName>Account_Partner_Application_Denied</fullName>
        <ccEmails>silverpeak@snapbi.com</ccEmails>
        <description>Account: Partner Application Denied</description>
        <protected>false</protected>
        <recipients>
            <field>Primary_Partner_Contact_E_Mail_Address__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Partner_Account_Templates/Partner_Application_Denial</template>
    </alerts>
    <alerts>
        <fullName>Account_Send_New_Partner_Approved_Distributor_Alert</fullName>
        <description>Account: Send New Partner Approved Distributor Alert</description>
        <protected>false</protected>
        <recipients>
            <recipient>ewhite@silver-peak.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>jcameron@silver-peak.com</recipient>
            <type>user</type>
        </recipients>
        <senderAddress>silverpeakinfo@silver-peak.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Partner_Account_Templates/New_Partner_Approved_Distributor_Alert</template>
    </alerts>
    <alerts>
        <fullName>Email_sent_to_partner_after_his_reuqest_has_been_denied</fullName>
        <ccEmails>silverpeak@snapbi.com</ccEmails>
        <description>Email sent to partner after his request has been denied</description>
        <protected>false</protected>
        <recipients>
            <field>Primary_Partner_Contact_E_Mail_Address__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Partner_Account_Templates/Partner_Application_Denial</template>
    </alerts>
    <alerts>
        <fullName>Email_sent_to_partner_after_it_has_been_approved</fullName>
        <ccEmails>silverpeak@snapbi.com</ccEmails>
        <description>Email sent to partner after it has been approved</description>
        <protected>false</protected>
        <recipients>
            <field>Primary_Partner_Contact_E_Mail_Address__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>silverpeakinfo@silver-peak.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Partner_Account_Templates/Partner_Application_Approved</template>
    </alerts>
    <alerts>
        <fullName>Expired_Flag_is_unchecked</fullName>
        <description>Expired Flag is unchecked</description>
        <protected>false</protected>
        <recipients>
            <recipient>prane@silver-peak.com</recipient>
            <type>user</type>
        </recipients>
        <senderAddress>noreply@silver-peak.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>unfiled$public/Expired_Customer_Flag_Unchecked</template>
    </alerts>
    <alerts>
        <fullName>Notify_Partner_Team_on_New_Partner_Creation</fullName>
        <description>Notify Partner Team on New Partner Creation</description>
        <protected>false</protected>
        <recipients>
            <recipient>amenjivar@silver-peak.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>cvir@silver-peak.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>ddalponte@silver-peak.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>shorton@silver-peak.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Notification_New_Partner</template>
    </alerts>
    <alerts>
        <fullName>Send_Email_to_Marketing_when_the_expired_customer_is_checked</fullName>
        <description>Send Email to Marketing when the expired customer is checked</description>
        <protected>false</protected>
        <recipients>
            <recipient>prane@silver-peak.com</recipient>
            <type>user</type>
        </recipients>
        <senderAddress>noreply@silver-peak.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>unfiled$public/Expired_Customer_Flag_checked</template>
    </alerts>
    <fieldUpdates>
        <fullName>Account_Set_Application_Status_Approved</fullName>
        <description>Set Partner Application Status to Approved</description>
        <field>Partner_Application_Status__c</field>
        <literalValue>Approved</literalValue>
        <name>Account: Set Application Status Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Account_Set_Application_Status_Denied</fullName>
        <description>Set Partner Application Status to Denied</description>
        <field>Partner_Application_Status__c</field>
        <literalValue>Denied</literalValue>
        <name>Account: Set Application Status Denied</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Account_Set_Approved_Denied_Date</fullName>
        <description>The date the Account was approved or Denied</description>
        <field>Approved_Denied_Date__c</field>
        <formula>TODAY()</formula>
        <name>Account: Set Approved/Denied Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Account_Set_Partner_Level_to_Reigstered</fullName>
        <description>Partner Level Updates to Registered</description>
        <field>Partner_Level__c</field>
        <literalValue>Registered</literalValue>
        <name>Account: Set Partner Level to Reigstered</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Account_Set_Partner_Type_to_Reseller</fullName>
        <description>Sets Partner Type to Reseller</description>
        <field>Partner_Type__c</field>
        <literalValue>Reseller</literalValue>
        <name>Account: Set Partner Type to Reseller</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Account_Set_Registered_Discount_NX_VX</fullName>
        <description>Set NXVX Reg Discount to 0.3</description>
        <field>Registered_Discount_Product__c</field>
        <formula>0.3</formula>
        <name>Account: Set Registered Discount NX/VX</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Account_Set_Registered_Discount_Service</fullName>
        <description>Set Registered Discount Service to 0.23</description>
        <field>Registered_Discount_Service__c</field>
        <formula>0.23</formula>
        <name>Account: Set Registered Discount Service</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Account_Set_Registered_Edge_Connect</fullName>
        <description>Set Registered Edge Connect to 0.22</description>
        <field>Registered_Discount_EdgeConnect__c</field>
        <formula>0.22</formula>
        <name>Account: Set Registered Edge Connect</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Account_Set_Standard_Discount_Edge_Conn</fullName>
        <description>Set Standard Edge Connect to 0.10</description>
        <field>Standard_Discount_EdgeConnect__c</field>
        <formula>0.10</formula>
        <name>Account: Set Standard Discount Edge Conn</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Account_Set_Standard_Discount_NX_VX</fullName>
        <field>Standard_Discount_Product__c</field>
        <formula>0.15</formula>
        <name>Account: Set Standard Discount NX/VX</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Account_Set_Standard_Discount_Service</fullName>
        <description>Set Standard Discount Service to 0.05</description>
        <field>Standard_Discount_Service__c</field>
        <formula>0.05</formula>
        <name>Account: Set Standard Discount Service</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>AcctRecType2Other</fullName>
        <field>RecordTypeId</field>
        <lookupValue>Other</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>AcctRecType2Other</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>AcctRecTypetoCust</fullName>
        <field>RecordTypeId</field>
        <lookupValue>Customer</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>AcctRecTypetoCust</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Approved_Denied_Date</fullName>
        <description>The date the Account was approved</description>
        <field>Approved_Denied_Date__c</field>
        <formula>TODAY()</formula>
        <name>Approved/Denied Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>ChangeAccountTypeToCustomer</fullName>
        <field>Type</field>
        <literalValue>Customer</literalValue>
        <name>ChangeAccountTypeToCustomer</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>CheckExpiredCustomerFlag</fullName>
        <field>Expired_Customer__c</field>
        <literalValue>1</literalValue>
        <name>CheckExpiredCustomerFlag</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Flip_to_Approve</fullName>
        <field>Partner_Application_Status__c</field>
        <literalValue>Approved</literalValue>
        <name>Flip to Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Flip_to_Approved</fullName>
        <field>Partner_Application_Status__c</field>
        <literalValue>Approved</literalValue>
        <name>Flip to Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Flip_to_Denied</fullName>
        <field>Partner_Application_Status__c</field>
        <literalValue>Denied</literalValue>
        <name>Flip to Denied</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>NXVX_Reg_Discount</fullName>
        <field>Registered_Discount_Product__c</field>
        <formula>0.3</formula>
        <name>NXVX Reg Discount</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Partner_Level_Updates_to_Registered</fullName>
        <field>Partner_Level__c</field>
        <literalValue>Registered</literalValue>
        <name>Partner Level Updates to Registered</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Partner_Type_Updates_to_Reseller</fullName>
        <field>Partner_Type__c</field>
        <literalValue>Reseller</literalValue>
        <name>Partner Type Updates to Reseller</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Registered_Discount_Service</fullName>
        <field>Registered_Discount_Service__c</field>
        <formula>0.23</formula>
        <name>Registered Discount Service</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Registered_Edge_Connect</fullName>
        <field>Registered_Discount_EdgeConnect__c</field>
        <formula>0.22</formula>
        <name>Registered Edge Connect</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SetRecTypetoReseller</fullName>
        <field>RecordTypeId</field>
        <lookupValue>Resellers</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>SetRecTypetoReseller</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Standard_Discount_Service</fullName>
        <field>Standard_Discount_Service__c</field>
        <formula>0.05</formula>
        <name>Standard Discount Service</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Standard_Edge_Connect</fullName>
        <field>Standard_Discount_EdgeConnect__c</field>
        <formula>0.10</formula>
        <name>Standard Edge Connect</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Standard_NXVC</fullName>
        <field>Standard_Discount_Product__c</field>
        <formula>0.15</formula>
        <name>Standard NXVC</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SyncEmployeeFields</fullName>
        <field>NumberOfEmployees</field>
        <formula>Number_of_Employees__c</formula>
        <name>SyncEmployeeFields</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UnCheckExpiredCustomerFlag</fullName>
        <field>Expired_Customer__c</field>
        <literalValue>0</literalValue>
        <name>UnCheckExpiredCustomerFlag</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>ActivateExpiredAccountField</fullName>
        <actions>
            <name>Send_Email_to_Marketing_when_the_expired_customer_is_checked</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>CheckExpiredCustomerFlag</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND( ISCHANGED(Active_Asset_Count__c), Active_Asset_Count__c==0, PRIORVALUE(Expired_Customer__c)=false)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>DeactivateExpiredAccountField</fullName>
        <actions>
            <name>Expired_Flag_is_unchecked</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>UnCheckExpiredCustomerFlag</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND( ISCHANGED(Active_Asset_Count__c),  Active_Asset_Count__c&gt;0, PRIORVALUE(Expired_Customer__c)=true )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Notify Partner Team on New Partner</fullName>
        <actions>
            <name>Notify_Partner_Team_on_New_Partner_Creation</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Account.Partner_Portal_Enabled__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Send email to partner team users when new partner is enabled for new account.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>PopulateRightAccountType</fullName>
        <actions>
            <name>ChangeAccountTypeToCustomer</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND( ISCHANGED(Active_Asset_Count__c), Active_Asset_Count__c &gt;0, NOT(OR(ISPICKVAL(PRIORVALUE(Type),&quot;Customer&quot;),ISPICKVAL(PRIORVALUE(Type),&quot;Partner&quot;))) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>SetRecordTypetoCustomer</fullName>
        <actions>
            <name>AcctRecTypetoCust</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Account.Type</field>
            <operation>equals</operation>
            <value>Customer,Prospect</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>SetRecordTypetoOther</fullName>
        <actions>
            <name>AcctRecType2Other</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Account.Type</field>
            <operation>equals</operation>
            <value>Competitor</value>
        </criteriaItems>
        <description>Set Record Type to Other</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>SetRecordTypetoReseller</fullName>
        <actions>
            <name>SetRecTypetoReseller</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Account.Type</field>
            <operation>equals</operation>
            <value>Partner</value>
        </criteriaItems>
        <description>Set Record Type to Reseller</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>SyncEmployeeFields</fullName>
        <actions>
            <name>SyncEmployeeFields</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>if there is a process that feeds Number of Employees, since the value to employees since it is the only field displayed on the page layout</description>
        <formula>AND(ISCHANGED(Number_of_Employees__c),  ISBLANK( NumberOfEmployees ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
