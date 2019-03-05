<?xml version="1.0" encoding="utf-8" standalone="yes"?>
<applicationModel>
    <name>yadayadaAppModel</name>
    <className>yadayadaAppModel</className>
    <description>descriptionare</description>
    <objects>
        <object type="Page" technology="Web">
            <name>Google</name>
            <codeName>GooglePage</codeName>
            <description></description>
            <identification/>
            <children>
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
                            <property name="AccessibilityName" type="string" isRegExp="false">Google Search</property>
                            <property name="ButtonType" type="string" isRegExp="false">submit</property>
                            <property name="Name" type="string" isRegExp="false">Google Search</property>
                            <property name="Role" type="string" isRegExp="false"></property>
                            <property name="TagName" type="string" isRegExp="false">INPUT</property>
                        </properties>
                        <index>1</index>
                    </identification>
                </object>
                <object type="Button" technology="Web">
                    <name>I'm Feeling Lucky</name>
                    <codeName>IMFeelingLuckyButton</codeName>
                    <description></description>
                    <identification>
                        <properties>
                            <property name="AccessibilityName" type="string" isRegExp="false">I'm Feeling Lucky</property>
                            <property name="ButtonType" type="string" isRegExp="false">submit</property>
                            <property name="Name" type="string" isRegExp="false">I'm Feeling Lucky</property>
                            <property name="Role" type="string" isRegExp="false"></property>
                            <property name="TagName" type="string" isRegExp="false">INPUT</property>
                        </properties>
                        <index>1</index>
                    </identification>
                </object>
            </children>
        </object>
        <object type="Page" technology="Web">
            <name>yada yada yada - Google Search</name>
            <codeName>YadaGoogleSearchPage</codeName>
            <description></description>
            <identification/>
            <children>
                <object type="WebElement" technology="Web">
                    <name>Urban Dictionary: Yada yada yada</name>
                    <codeName>UrbanDictionaryYadaLink</codeName>
                    <description></description>
                    <identification>
                        <properties>
                            <property name="InnerText" type="string" isRegExp="false">Urban Dictionary: Yada yada yada</property>
                            <property name="TagName" type="string" isRegExp="false">H3</property>
                        </properties>
                    </identification>
                </object>
            </children>
        </object>
    </objects>
</applicationModel>
