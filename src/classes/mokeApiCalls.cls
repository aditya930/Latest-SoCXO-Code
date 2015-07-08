public class mokeApiCalls
{
    
    public static  String mokeApiResultForFBConnetcCont()
    {
        string response ='CAACLDBcwOpcBABHdV0291LiQRnZBGRBZAIFhJZBI9i5YGXloyJgqeZBklV87peF0qcETjNibiKDOaNvFIouLc4sQpynJJlK9Ew7tOIVoiwZC0eZBvAMXEpxSoI5f0Fjdws0NZBE1TuRFmi2YgNGbF7DKyYKRtVx518RdeDgJYYicIJ1rKaeKtQOR8tIleDdsQMueypFW5T5ZAocPEFR2hx21&expires=5183999' ;
        return response ;
    }
    public static  HttpResponse mokeApiResultForGetAppsett()
    {
        HttpResponse HtRresponse = new HttpResponse() ; 
        socxoApiHandler.socxoAppSettings sampleAppSettings = new socxoApiHandler.socxoAppSettings();
        sampleAppSettings.Status  = '1000'; 
        sampleAppSettings.Message = 'Success';
        socxoApiHandler.socxoAppkeys objAppKeysWrapper = new socxoApiHandler.socxoAppkeys();
        objAppKeysWrapper.FbAppkey = '152884044905111'; 
        objAppKeysWrapper.FbAppSecret = '097161322cb0ccd0c7688c6c06d95328';
        objAppKeysWrapper.TwitterAppkey = 'BnlLdcAHEYAtuAfBxv0CBX6vy';
        objAppKeysWrapper.TwitterAppSecret = 'tNsQQd7C6yz00OhonB8uTOvQs2FQIbkFkoeltf3E1Ox4BOE3lk';
        objAppKeysWrapper.LinkedInAppKey = '7560aobpy38uff';
        objAppKeysWrapper.LinkedInAppSecret= 'jFMEcGNJRUuTmSkI';
        sampleAppSettings.AppKeys = objAppKeysWrapper;               
        HtRresponse.setBody(JSON.Serialize(sampleAppSettings));
        return HtRresponse ;
    }   
    public static  HttpResponse mokeApiResultForgetmybody()
    {
        HttpResponse response = new HttpResponse ();
        facebookIntegrationController.response getBodyResponse = new facebookIntegrationController.response();
        getBodyResponse.id = '333egee53333';
        getBodyResponse.name = 'Test';
        
        facebookIntegrationController.DATA getBodyData = new facebookIntegrationController.DATA();
        getBodyData.is_silhouette  = True;
        getBodyData.url  = 'http://i.forbesimg.com/media/lists/companies/google_416x416.jpg';
        facebookIntegrationController.wrapper getBodyWrapper = new facebookIntegrationController.wrapper();
        getBodyWrapper.data =  getBodyData ;
        
        getBodyResponse.picture= getBodyWrapper ;
        response.setBody(JSON.Serialize(getBodyResponse));
        return response ;
    }
    public static  HttpResponse mokeApiResultFbConnect()
    {
        HttpResponse response = new HttpResponse ();        
        return response ;
    }
    public static  HttpResponse mokeApiResultfetchLinkedinToken()
    {
        HttpResponse response = new HttpResponse ();
        linkedinIntegrationController.accessTokenParser objAccessTokenParser = new linkedinIntegrationController.accessTokenParser(); 
        objAccessTokenParser.access_token  = '1THKEVHF9vuNdhDcNzfUPGr_nCroMly3sUMpIsg0ITvXx7L14rUHIEzHzF3jroLB7P_v-_CP8MsdwYuWuxlWNIJVLbTNfNA_INR19ABqDbcmBfbuWVmyimloy_QTwQz3fObqoF1Q-qsvE6yOU-7YYDKj_hCMdi2VpuoaW9OM5V1bcy1OrTDEAs-IT_xaPaNVh0wbkB9U1ZsU0yIsddVL6towmBS4Ym--1D2TBnX9TXRUEQntmqyyMDQQvZsMD844f54eoJLfydgyLjRmOvKcSB85ik1D0C-SxKhQoB89dc1m38Ovyg3QALb_eTRAmyVELu5UCk8v72guUFF09Hl0ZjuvgkQ22-ZJEzMWrr6L7-jnDvJ6AWNhzyBEmCqt2pM6vG0oaMcZmhK8lvKw4GXayEJqeH0L_1SAPDVoln3D_I1wFmVViC_pQGWL4adfFZa68-NN5w';
        objAccessTokenParser.expires_in  = string.valueOf(DateTime.now() + 50);
        response.setBody(JSON.Serialize(objAccessTokenParser));      
        return response ;           
    }
    public static  HttpResponse mokeApiResultGetLinkedinbody()
    {
        HttpResponse response = new HttpResponse ();
         //Creating New  SOCXO_Service__c Record
          SOCXO_Service__c testSocxoService = new SOCXO_Service__c(
                                                username__c = 'manager@testenv.com',
                                                password__c = '123456',
                                                SFuser__c = UserInfo.getUserId()
                                                );
        INSERT testSocxoService;         
        linkedinIntegrationController.linkedinUserDetail objLinkedinUserDetail = new linkedinIntegrationController.linkedinUserDetail();
        objLinkedinUserDetail.id = testSocxoService.ID;
        response.setBody(JSON.Serialize(objLinkedinUserDetail));
        return response ;           
    }
    public static  HttpResponse mokeApiResultLinkedinConnect()
    {
        HttpResponse response = new HttpResponse ();        
        return response ;           
    }
    public static  HttpResponse mokeApiResultTwitterUerDetails()
    {
        HttpResponse response = new HttpResponse ();        
        return response ;           
    }
}