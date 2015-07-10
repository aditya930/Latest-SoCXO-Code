//Unit Test For TwitterIntegration Controller
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
              //Creating New  SOCXO_Service__c Record
          SOCXO_Service__c testSocxoService = new SOCXO_Service__c(
                                                username__c = 'manager@testenv.com',
                                                password__c = '123456',
                                                SFuser__c = UserInfo.getUserId()
                                                );
         INSERT testSocxoService;
         // Creating new SOCXO_token__c Record
         SOCXO_token__c testSocxoToken = new SOCXO_token__c(
                                            Access_Token__c = '1THKEVHF9vuNdhDcNzfUPGr_nCroMly3sUMpIsg0ITvXx7L14rUHIEzHzF3jroLB7P_v-_CP8MsdwYuWuxlWNIJVLbTNfNA_INR19ABqDbcmBfbuWVmyimloy_QTwQz3fObqoF1Q-qsvE6yOU-7YYDKj_hCMdi2VpuoaW9OM5V1bcy1OrTDEAs-IT_xaPaNVh0wbkB9U1ZsU0yIsddVL6towmBS4Ym--1D2TBnX9TXRUEQntmqyyMDQQvZsMD844f54eoJLfydgyLjRmOvKcSB85ik1D0C-SxKhQoB89dc1m38Ovyg3QALb_eTRAmyVELu5UCk8v72guUFF09Hl0ZjuvgkQ22-ZJEzMWrr6L7-jnDvJ6AWNhzyBEmCqt2pM6vG0oaMcZmhK8lvKw4GXayEJqeH0L_1SAPDVoln3D_I1wFmVViC_pQGWL4adfFZa68-NN5w',
                                            expireson__c = DateTime.now() + 50,
                                            SOCXO_Service__c = testSocxoService.ID
                                            );
         INSERT testSocxoToken;  
        PageReference testPage = testObjtwtrIntCont.twitterUserDetails();
        socxoApiHandler objsocxoApiHandler = new socxoApiHandler();
        objsocxoApiHandler.twitterconnect('nIvvqE5AqG0ReV08WRcrwDLB6QJ5ywE6', '100sdfgjh6475245', 'nIvvqE5AqG0ReV08WRcrwDLB6QJ5ywE6');
        System.assertEquals(testpage.getURL(),'https://api.twitter.com/oauth/authenticate?oauth_token=null');
        ApexPages.currentpage().getParameters().put('oauth_verifier','nIvvqE5AqG0ReV08WRcrwDLB6QJ5ywE6');        
        testPage  =  testObjtwtrIntCont.twitterUserDetails(); 
        System.AssertEquals(testPage,NULL)    ;
    }
}