<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Sales_Alert</fullName>
        <description>Sales Alert</description>
        <protected>false</protected>
        <recipients>
            <recipient>integration@00d6f000001uqv3uam.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Sales_Template</template>
    </alerts>
    <fieldUpdates>
        <fullName>change_type</fullName>
        <field>Type</field>
        <literalValue>Pending</literalValue>
        <name>change type</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>type_to_customer</fullName>
        <field>Type</field>
        <literalValue>Customer</literalValue>
        <name>type to customer</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>type_to_prospect</fullName>
        <field>Type</field>
        <literalValue>Prospect</literalValue>
        <name>type to prospect</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Final Reject WF Rule</fullName>
        <actions>
            <name>Sales_Alert</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>change_type</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Account.Contact_Total__c</field>
            <operation>equals</operation>
            <value>100</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
