// Unit Test For FacebookIntegrationController
@isTest
public class facebookIntegrationControllerTest {
   // Methods for testing
   static testMethod void myTestOne() {
          facebookIntegrationController objFbInCont = new facebookIntegrationController();  
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
         //Testing Fbconnect method without 'code'             
         pagereference  resultPageRef = objFbInCont.fbconnect();
         socxoApiHandler objsocxoApiHandler = new socxoApiHandler();
         objsocxoApiHandler.getmefacebooktoken('1THKEVHF9vuNdhDcNzfUPGr_nCroMly3sUMpIsg0ITvXx7L14rUHIEzHzF3jroLB7P_v','true');
         //Adding 'code' value to the Url         
         ApexPages.currentPage().getParameters().put('code','1THKEVHF9vuNdhDcNzfUPGr_nCroMly3sUMpIsg0ITvXx7L14rUHIEzHzF3jroLB7P_v');  
         //Testing Fbconnect method with 'code'   
         resultPageRef = objFbInCont.fbconnect();
         //Asserting the Result The Expected Result is to be null     
         System.assertEquals(resultPageRef ,null);
     }    

}