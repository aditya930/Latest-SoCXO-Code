@istest

public with sharing class socxoUserRegistration_test{
       public static testMethod void testsocxouserRegistration() {
       
       SOCXO_Service__c testSocxoService = new SOCXO_Service__c(
                                                username__c = 'manager@testenv.com',
                                                password__c = '123456',
                                                SFuser__c = UserInfo.getUserId()
                                                );
        INSERT testSocxoService;

        SOCXO_token__c testSocxoToken = new SOCXO_token__c(
                                            Access_Token__c = '1THKEVHF9vuNdhDcNzfUPGr_nCroMly3sUMpIsg0ITvXx7L14rUHIEzHzF3jroLB7P_v-_CP8MsdwYuWuxlWNIJVLbTNfNA_INR19ABqDbcmBfbuWVmyimloy_QTwQz3fObqoF1Q-qsvE6yOU-7YYDKj_hCMdi2VpuoaW9OM5V1bcy1OrTDEAs-IT_xaPaNVh0wbkB9U1ZsU0yIsddVL6towmBS4Ym--1D2TBnX9TXRUEQntmqyyMDQQvZsMD844f54eoJLfydgyLjRmOvKcSB85ik1D0C-SxKhQoB89dc1m38Ovyg3QALb_eTRAmyVELu5UCk8v72guUFF09Hl0ZjuvgkQ22-ZJEzMWrr6L7-jnDvJ6AWNhzyBEmCqt2pM6vG0oaMcZmhK8lvKw4GXayEJqeH0L_1SAPDVoln3D_I1wFmVViC_pQGWL4adfFZa68-NN5w',
                                            expireson__c = DateTime.now() + 50,
                                            SOCXO_Service__c = testSocxoService.ID
                                            );
        INSERT testSocxoToken;
       socxouserRegistration controller= new socxouserRegistration();
       controller.Email='testemail@xyz.com';
       controller.Password='testpassword';
       controller.Fullname='testfullname';
       controller.Firstname='testfn';
       controller.ConfirmPwd='testpassword';
       PageReference testPage = controller.init();
       System.assertEquals(testPage,null);
       controller.registerUser();
       
       //controller.registerUser();
       controller.ConfirmPwd='testpassword1';
       controller.registerUser();
    }

    /*public static testMethod void testsocxouserRegistration1() {
       socxouserRegistration controller1= new socxouserRegistration();
       controller1.Email='testemail@xyz.com';
       controller1.Password='testpassword';
       controller1.Fullname='testfullname';
       controller1.Firstname='testfn';
       controller1.ConfirmPwd='testpassword';
       controller1.registerUser();
    }*/ 
           
   }