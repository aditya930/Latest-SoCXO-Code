@isTest
public class twitterIntegrationControllerTest
{
    static testMethod void twitterTestOne(){   
        socxoAppsettings__c settings= new socxoAppsettings__c ();
        settings.Name='socxoAppsettings';
        settings.FbAppkey__c = '152884044905111';
        settings.FbAppSecret__c = '097161322cb0ccd0c7688c6c06d95328';
        settings.TwitterAppkey__c = 'BnlLdcAHEYAtuAfBxv0CBX6vy';
        settings.TwitterAppSecret__c = 'tNsQQd7C6yz00OhonB8uTOvQs2FQIbkFkoeltf3E1Ox4BOE3lk';
        settings.LinkedInAppKey__c = '7560aobpy38uff';
        settings.LinkedInAppSecret__c = 'jFMEcGNJRUuTmSkI';       
        insert settings; 
        twitterIntegrationController testObjtwtrIntCont  = new twitterIntegrationController();
        //Creatin test ScoxoApp Settings for test
        
        PageReference testPage = testObjtwtrIntCont.twitterUserDetails();
        System.assertEquals(testpage.getURL(),'https://api.twitter.com/oauth/authenticate?oauth_token=null');
        ApexPages.currentpage().getParameters().put('oauth_verifier','nIvvqE5AqG0ReV08WRcrwDLB6QJ5ywE6');
        testObjtwtrIntCont.twitterUserDetails();
    }
}