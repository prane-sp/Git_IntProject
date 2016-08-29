<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Email_Alert_to_Sales_when_MDF_Fields_are_Updated</fullName>
        <ccEmails>latmdf@silver-peak.com,apacmdf@silver-peak.com,emeamdf@silver-peak.com,marketingrequest@silver-peak.com</ccEmails>
        <description>Email Alert to Sales when MDF Fields are Updated</description>
        <protected>false</protected>
        <recipients>
            <recipient>amenjivar@silver-peak.com</recipient>
            <type>user</type>
        </recipients>
        <senderAddress>silverpeakinfo@silver-peak.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>MDF/MDF_Update_Email</template>
    </alerts>
    <alerts>
        <fullName>MDF_Request_is_Approved_External</fullName>
        <ccEmails>amenjivar@silver-peak.com</ccEmails>
        <description>MDF Request is Approved (External)</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderAddress>silverpeakinfo@silver-peak.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>MDF/MDF_Request_is_Approved_External</template>
    </alerts>
    <alerts>
        <fullName>MDF_has_been_Submitted_External</fullName>
        <description>MDF has been Submitted (External)</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderAddress>silverpeakinfo@silver-peak.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>MDF/New_MDF_Request_Submitted_for_Approval_LAT_External</template>
    </alerts>
    <alerts>
        <fullName>New_MDF_Approved_Internal</fullName>
        <ccEmails>amenjivar@silver-peak.com</ccEmails>
        <description>New MDF Approved Internal</description>
        <protected>false</protected>
        <recipients>
            <field>CSM__c</field>
            <type>userLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>MDF/MDF_Request_is_Approved_Internal</template>
    </alerts>
    <alerts>
        <fullName>New_MDF_Approved_Post_Event</fullName>
        <ccEmails>amenjivar@silver-peak.com</ccEmails>
        <description>New MDF Approved Post Event</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>MDF/New_MDF_Approved_Post_Event</template>
    </alerts>
    <alerts>
        <fullName>New_MDF_Request_has_Been_Denied_Internal_APAC</fullName>
        <description>New MDF Request has Been Denied (Internal) APAC</description>
        <protected>false</protected>
        <recipients>
            <recipient>slau@silver-peak.com</recipient>
            <type>user</type>
        </recipients>
        <senderAddress>silverpeakinfo@silver-peak.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>MDF/New_MDF_Request_has_Been_Denied_Internal</template>
    </alerts>
    <alerts>
        <fullName>New_MDF_Request_has_Been_Denied_Internal_America</fullName>
        <description>New MDF Request has Been Denied (Internal) America</description>
        <protected>false</protected>
        <recipients>
            <recipient>amenjivar@silver-peak.com</recipient>
            <type>user</type>
        </recipients>
        <senderAddress>silverpeakinfo@silver-peak.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>MDF/New_MDF_Request_has_Been_Denied_Internal</template>
    </alerts>
    <alerts>
        <fullName>New_MDF_Request_has_Been_Denied_Internal_EMEA</fullName>
        <description>New MDF Request has Been Denied  (Internal) EMEA</description>
        <protected>false</protected>
        <recipients>
            <recipient>ltaelman@silver-peak.com</recipient>
            <type>user</type>
        </recipients>
        <senderAddress>silverpeakinfo@silver-peak.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>MDF/New_MDF_Request_has_Been_Denied_Internal</template>
    </alerts>
    <alerts>
        <fullName>New_MDF_Request_has_Been_Denied_Internal_LATAM</fullName>
        <description>New MDF Request has Been Denied (Internal) LATAM</description>
        <protected>false</protected>
        <recipients>
            <recipient>bwells@silver-peak.com</recipient>
            <type>user</type>
        </recipients>
        <senderAddress>silverpeakinfo@silver-peak.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>MDF/New_MDF_Request_has_Been_Denied_Internal</template>
    </alerts>
    <alerts>
        <fullName>New_MDF_Request_has_been_Denied_External</fullName>
        <ccEmails>amejivar@silver-peak.com</ccEmails>
        <description>New MDF Request has been Denied (External)</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderAddress>silverpeakinfo@silver-peak.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>MDF/New_MDF_Request_has_Been_Denied_External</template>
    </alerts>
    <alerts>
        <fullName>New_MDF_Request_is_Approved</fullName>
        <description>New MDF Request is Approved America</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <recipients>
            <recipient>amenjivar@silver-peak.com</recipient>
            <type>user</type>
        </recipients>
        <senderAddress>silverpeakinfo@silver-peak.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>MDF/MDF_Request_is_Approved_External</template>
    </alerts>
    <alerts>
        <fullName>New_MDF_Request_is_Approved_APAC</fullName>
        <description>New MDF Request is Approved APAC</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <recipients>
            <recipient>cwong@silver-peak.com</recipient>
            <type>user</type>
        </recipients>
        <senderAddress>silverpeakinfo@silver-peak.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>MDF/MDF_Request_is_Approved_External</template>
    </alerts>
    <alerts>
        <fullName>New_MDF_Request_is_Approved_EMEA</fullName>
        <description>New MDF Request is Approved EMEA</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <recipients>
            <recipient>ltaelman@silver-peak.com</recipient>
            <type>user</type>
        </recipients>
        <senderAddress>silverpeakinfo@silver-peak.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>MDF/MDF_Request_is_Approved_External</template>
    </alerts>
    <alerts>
        <fullName>New_MDF_Request_is_Approved_LATAM</fullName>
        <description>New MDF Request is Approved LATAM</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderAddress>silverpeakinfo@silver-peak.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>MDF/MDF_Request_is_Approved_External</template>
    </alerts>
    <fieldUpdates>
        <fullName>Approval_Date_Updates</fullName>
        <description>Approval date updated when PR is approved</description>
        <field>Approval_Date__c</field>
        <formula>TODAY()</formula>
        <name>Approval Date Updates</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Approval_Status_Hidden_to_Approved</fullName>
        <description>Approval Status (Hidden) to approved.</description>
        <field>Approval_Status_Hidden__c</field>
        <literalValue>Approved</literalValue>
        <name>Approval Status (Hidden) to Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Approval_Status_Hidden_to_Denied</fullName>
        <field>Approval_Status_Hidden__c</field>
        <literalValue>Denied</literalValue>
        <name>Approval Status (Hidden) to Denied</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Approval_Status_Hidden_to_Pending</fullName>
        <field>Approval_Status_Hidden__c</field>
        <literalValue>Pending</literalValue>
        <name>Approval Status (Hidden) to Pending</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Approval_Status_hidden_Update</fullName>
        <field>Approval_Status_Hidden__c</field>
        <literalValue>Approval 1</literalValue>
        <name>Approval Status (hidden) Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>NextValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Approval_Status_to_Approved</fullName>
        <description>Approval Status to Approved</description>
        <field>Approval_Status__c</field>
        <literalValue>Approved</literalValue>
        <name>Approval Status to Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Move_MDF_Request_To_Pending</fullName>
        <field>Approval_Status__c</field>
        <literalValue>Pending</literalValue>
        <name>Move MDF Request To Pending</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SetGEO</fullName>
        <description>set GEO to CSM of account</description>
        <field>GEO__c</field>
        <formula>GEO_of_Owner_Acct__c</formula>
        <name>SetGEO</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_MDF_Request_To_Approved</fullName>
        <field>Approval_Status__c</field>
        <literalValue>Approved</literalValue>
        <name>Update MDF Request To Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_MDF_Request_To_Deny</fullName>
        <field>Approval_Status__c</field>
        <literalValue>Denied</literalValue>
        <name>Update MDF Request To Deny</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Reason_Denied_to_Blank</fullName>
        <field>Reason_Rejected__c</field>
        <name>Update &quot;Reason Denied&quot; to Blank</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Updated_RT_to_Approved</fullName>
        <field>RecordTypeId</field>
        <lookupValue>Approved_MDF</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Updated RT to Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>MDF Request Reason Entered</fullName>
        <actions>
            <name>New_MDF_Request_has_been_Denied_External</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Update_MDF_Request_To_Deny</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>MDF_Request__c.Approval_Status_Hidden__c</field>
            <operation>equals</operation>
            <value>Denied</value>
        </criteriaItems>
        <criteriaItems>
            <field>MDF_Request__c.Reason_Rejected__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>When an MDF Request is Denied the First Approver is required to go enter a &apos;Reason Denied&apos;. Once this reason is entered the Partner is alerted to the &apos;Denied Reason&apos;.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Marketing Alerted when MDF Updated</fullName>
        <actions>
            <name>Email_Alert_to_Sales_when_MDF_Fields_are_Updated</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <formula>ISCHANGED(LastModifiedDate)   &amp;&amp;   LastModifiedBy.UserRole.Name    &lt;&gt;    &quot;13a-SP Partner Portal Login,12d-SP Customer &amp; Partner,13a-SP Partner Portal Login,13d-SP Partner Portal with support&quot;</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>New MDF Request is Approved</fullName>
        <actions>
            <name>MDF_Request_is_Approved_External</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>New_MDF_Approved_Internal</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Approval_Date_Updates</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Updated_RT_to_Approved</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>MDF_Request__c.Approval_Status__c</field>
            <operation>equals</operation>
            <value>Approved</value>
        </criteriaItems>
        <description>This fires when the Purchase Request is approved. Updated MDF Fields (Approval Status, Approval Status (Hidden), and Alerts Partner &amp; Channel Team</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>New_MDF_Approved_Post_Event</name>
                <type>Alert</type>
            </actions>
            <offsetFromField>MDF_Request__c.Activity_Date__c</offsetFromField>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>SetGEOfor Submit</fullName>
        <actions>
            <name>SetGEO</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND(  CONTAINS(TEXT(CreatedBy.UserType) , &apos;Partner&apos;),  ISBLANK(GEO__c)  )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
