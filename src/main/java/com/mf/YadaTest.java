package com.mf;

import static org.junit.Assert.*;

import com.hp.lft.report.*;
import com.hp.lft.sdk.internal.common.MessageFieldNames;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import com.hp.lft.sdk.*;
import com.hp.lft.verifications.*;
import com.hp.lft.sdk.web.*;

import unittesting.*;

public class YadaTest extends UnitTestClassBase {
    private Browser browser;
    private VerificationData verificationData = new VerificationData();
    private yadayadaAppModel model;

    public YadaTest() {
        //Change this constructor to private if you supply your own public constructor
    }

    @BeforeClass
    public static void setUpBeforeClass() throws Exception {
        instance = new YadaTest();
        globalSetup(YadaTest.class);
    }

    @AfterClass
    public static void tearDownAfterClass() throws Exception {
        globalTearDown();
    }

    @Before
    public void setUp() throws Exception {
        browser = BrowserFactory.launch(BrowserType.FIREFOX);
    }

    @After
    public void tearDown() throws Exception {
        browser.closeAllTabs();
    }

    @Test
    public void test() throws GeneralLeanFtException, ReportException {
        try {
            browser.navigate("https://www.google.com/");
            model = new yadayadaAppModel(browser);
            model.GooglePage().SearchEditField().highlight();
            model.GooglePage().SearchEditField().setValue("yada yada yada");
            model.GooglePage().GoogleSearchButton().highlight();
            model.GooglePage().GoogleSearchButton().click();

            Thread.sleep(2000);

            String expected = "Urban Dictionary: Yada yada yada";
            String actual = model.YadaGoogleSearchPage().UrbanDictionaryYadaLink().getInnerText();

            boolean isMatch = actualMatchesExpected(true, "Check Yada link",
                    "Verify the yada yada yada link...", actual, expected);
            if (isMatch) {
                model.YadaGoogleSearchPage().UrbanDictionaryYadaLink().highlight();
                model.YadaGoogleSearchPage().UrbanDictionaryYadaLink().click();
                Reporter.reportVerification(Status.Passed, verificationData);

                // let the page load...
                Thread.sleep(2000);
            }
            else
                Reporter.reportVerification(Status.Failed, verificationData);

            // Report result to JUnit framework
            assertTrue("[Google search results] Expected: " + expected + ", Actual: " + actual, isMatch);

        } catch (GeneralLeanFtException glftex) {
            System.out.println("Hellloooo Jerry!!!!");
            System.out.println(glftex.getMessage());
        } catch (Exception ex) {
            System.out.println("Hellloooo Newman!!!!");
            System.out.println(ex.getMessage());
        }
    }

    private boolean actualMatchesExpected(boolean isExactMatch, String name, String description, String actual, String expected) throws GeneralLeanFtException {
        // Create a verification
        verificationData.name = name;
        verificationData.description = description;
        verificationData.operationName = "=";
        verificationData.image = browser.getSnapshot();

        // Add the verification parameters
        VerificationParameter vp1 = new VerificationParameter("Actual", actual);
        VerificationParameter vp2 = new VerificationParameter("Expected", expected);
        verificationData.verificationParameters.add(vp1);
        verificationData.verificationParameters.add(vp2);

        if (isExactMatch)
            return actual.contentEquals(expected);
        else
            return actual.contains(expected);
    }

}