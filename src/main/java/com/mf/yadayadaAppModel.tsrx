<?xml version="1.0" encoding="utf-8" standalone="yes"?>
<applicationModel>
<name>Application Model</name>
<className>yadayadaAppModel</className>
<objects>
    <object type="EditField" technology="Web">
        <name>Search</name>
        <codeName>SearchEditField</codeName>
        <description></description>
        <identification>
            <properties>
                <property name="Name" type="string" isRegExp="false">q</property>
                <property name="TagName" type="string" isRegExp="false">INPUT</property>
                <property name="Type" type="string" isRegExp="false">text</property>
            </properties>
        </identification>
    </object>
    <object type="Button" technology="Web">
        <name>Google Search</name>
        <codeName>GoogleSearchButton</codeName>
        <description></description>
        <identification>
            <properties>
                <property name="ButtonType" type="string" isRegExp="false">submit</property>
                <property name="Name" type="string" isRegExp="false">Google Search</property>
                <property name="TagName" type="string" isRegExp="false">INPUT</property>
            </properties>
        </identification>
    </object>
    <object type="Link" technology="Web">
        <name>Urban Dictionary: Yada yada yada</name>
        <codeName>YadaLink</codeName>
        <description></description>
        <identification>
            <properties>
                <property name="InnerText" type="string" isRegExp="false">Urban Dictionary: Yada yada yada</property>
                <property name="TagName" type="string" isRegExp="false">A</property>
            </properties>
        </identification>
    </object>
</objects>
</applicationModel>
