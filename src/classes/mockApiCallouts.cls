public with sharing class mockApiCallouts
{
   
    public static  String mockApiResultForFBConnectCont()
    {
        string response ='CAACLDBcwOpcBABHdV0291LiQRnZBGRBZAIFhJZBI9i5YGXloyJgqeZBklV87peF0qcETjNibiKDOaNvFIouLc4sQpynJJlK9Ew7tOIVoiwZC0eZBvAMXEpxSoI5f0Fjdws0NZBE1TuRFmi2YgNGbF7DKyYKRtVx518RdeDgJYYicIJ1rKaeKtQOR8tIleDdsQMueypFW5T5ZAocPEFR2hx21&expires=5183999' ;
        return response ;
    }
    public static  HttpResponse mockApiResultForGetAppsett()
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
    public static  HttpResponse mockApiResultForgetmybody()
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
    public static  HttpResponse mockApiResultFbConnect()
    {
        HttpResponse response = new HttpResponse ();        
        return response ;
    }
    public static  HttpResponse mockApiResultfetchLinkedinToken()
    {
        HttpResponse response = new HttpResponse ();
        linkedinIntegrationController.accessTokenParser objAccessTokenParser = new linkedinIntegrationController.accessTokenParser(); 
        objAccessTokenParser.access_token  = '1THKEVHF9vuNdhDcNzfUPGr_nCroMly3sUMpIsg0ITvXx7L14rUHIEzHzF3jroLB7P_v-_CP8MsdwYuWuxlWNIJVLbTNfNA_INR19ABqDbcmBfbuWVmyimloy_QTwQz3fObqoF1Q-qsvE6yOU-7YYDKj_hCMdi2VpuoaW9OM5V1bcy1OrTDEAs-IT_xaPaNVh0wbkB9U1ZsU0yIsddVL6towmBS4Ym--1D2TBnX9TXRUEQntmqyyMDQQvZsMD844f54eoJLfydgyLjRmOvKcSB85ik1D0C-SxKhQoB89dc1m38Ovyg3QALb_eTRAmyVELu5UCk8v72guUFF09Hl0ZjuvgkQ22-ZJEzMWrr6L7-jnDvJ6AWNhzyBEmCqt2pM6vG0oaMcZmhK8lvKw4GXayEJqeH0L_1SAPDVoln3D_I1wFmVViC_pQGWL4adfFZa68-NN5w';
        objAccessTokenParser.expires_in  = string.valueOf(DateTime.now() + 50);
        response.setBody(JSON.Serialize(objAccessTokenParser));      
        return response ;           
    }
    public static  HttpResponse mockApiResultGetLinkedinbody()
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
    public static  HttpResponse mockApiResultLinkedinConnect()
    {
        HttpResponse response = new HttpResponse ();        
        return response ;           
    }
    public static  HttpResponse mockApiResultTwitterUserDetails()
    {
        HttpResponse response = new HttpResponse ();    
        twitterIntegrationController.response testObjResponse = new twitterIntegrationController.response();
        testObjResponse .id = '01p28000001nPLn';
        testObjResponse .profile_image_url ='http://i.forbesimg.com/media/lists/companies/google_416x416.jpg?sapmlePara=3453nbbjkh636';   
        response.setBody(JSON.Serialize(testObjResponse));     
        return response ;           
    }

    public static  HttpResponse Categories()
    {
        HttpResponse response = new HttpResponse();
        response.setBody('{ \"categories\":[{' + 
         '\"imageUrl\":\"http://testenv.socxo.com/admin/resources/categories/26/imageurl\",'+
         '\"category_Master_Id\":196,'+
         '\"selected\":true,'+
         '\"categoryId\":26,'+
         '\"name\":\"Arts and Culture\",'+
         '\"referenceUrls\":null,'+
         '\"parentCategory_CategoryId\":null,'+
         '\"isArchived\":false'+
      '}],'+
   '\"status\":1000,'+
   '\"message\":\"Success\"}'); 

        response.setStatusCode(200);
        return response;
      }

      public static HttpResponse getAllBlurbs() {
        HttpResponse response= new HttpResponse();
        response.setBody('{'+
    '\"blurbs\": ['+
        '{'+
            '\"_id\": \"559512efc4ea8a60088b3db6\",'+
            '\"userBlurbId\": \"559512efc4ea8a60088b3db6\",'+
            '\"blurbId\": 14132,'+
            '\"description\": \"Volkswagen\",'+
            '\"imageUrl\": \"http://www.thehindu.com/multimedia/dynamic/02458/02KIMP_VENTO4_2458175c.jpg\",'+
            '\"feedId\": 365,'+
            '\"feedName\": \"The Hindu - Motoring\",'+
            '\"title\": \"Sharp style\",'+
            '\"url\": \"http://www.thehindu.com/features/metroplus/Motoring/volkswagen-vento-facelift-sharp-style/article7375228.ece?utm_source=RSS_Feed&utm_medium=RSS&utm_campaign=RSS_Syndication\",'+
            '\"comment\": null,'+
            '\"categoryId\": 1,'+
            '\"categoryName\": \"Industry\",'+
            '\"cdnImageUrl\": null,'+
            '\"socialMeadiaPost\": null'+
        '}],'+
    '\"count\": 50,'+
    '\"paging\": {'+
        '\"next\": {'+
            '\"sinceId\": \"559512efc4ea8a60088b3db6\"'+
        '},'+
        '\"previous\": {'+
            '\"sinceId\": \"5593d1d4c4ea8a55e02144f5\"'+
        '}'+
    '},'+
    '\"status\": 1000,'+
    '\"message\": \"Success\"'+
'}');
      response.setStatusCode(200);
        return response;
      }

      public static HttpResponse getmerelatedblurbs() {
            HttpResponse response= new HttpResponse();
        response.setBody('{'+
    '\"blurbs\": ['+
        '{'+
            '\"_id\": \"559512efc4ea8a60088b3db6\",'+
            '\"userBlurbId\": \"559512efc4ea8a60088b3db6\",'+
            '\"blurbId\": 14132,'+
            '\"description\": \"Volkswagen\",'+
            '\"imageUrl\": \"http://www.thehindu.com/multimedia/dynamic/02458/02KIMP_VENTO4_2458175c.jpg\",'+
            '\"feedId\": 365,'+
            '\"feedName\": \"The Hindu - Motoring\",'+
            '\"title\": \"Sharp style\",'+
            '\"url\": \"http://www.thehindu.com/features/metroplus/Motoring/volkswagen-vento-facelift-sharp-style/article7375228.ece?utm_source=RSS_Feed&utm_medium=RSS&utm_campaign=RSS_Syndication\",'+
            '\"comment\": null,'+
            '\"categoryId\": 1,'+
            '\"categoryName\": \"Industry\",'+
            '\"cdnImageUrl\": null,'+
            '\"socialMeadiaPost\": null'+
        '}],'+
    '\"count\": 50,'+
    '\"paging\": {'+
        '\"next\": {'+
            '\"sinceId\": \"559512efc4ea8a60088b3db6\"'+
        '},'+
        '\"previous\": {'+
            '\"sinceId\": \"5593d1d4c4ea8a55e02144f5\"'+
        '}'+
    '},'+
    '\"status\": 1000,'+
    '\"message\": \"Success\"'+
'}');
      response.setStatusCode(200);
        return response;

      }

      public static HttpResponse facebookpost() {
        HttpResponse response = new HttpResponse();
        response.setBody('{'+
          '\"Status\": 1000,'+
          '\"Message\": \"Success\"'+
          '}');

        response.setStatusCode(200);
        return response;
      }

      public static HttpResponse twitterpost() {
        HttpResponse response = new HttpResponse();
        response.setBody('{'+
          '\"Status\": 1000,'+
          '\"Message\": \"Success\"'+
          '}');

        response.setStatusCode(200);
        return response;
      }
      
      public static HttpResponse mockFbConnect(){
          HttpResponse response = new HttpResponse();
          return response;
      }
      public static HttpResponse linkedinPost() {
        HttpResponse response = new HttpResponse();
        response.setBody('{'+
          '\"Status\": 1000,'+
          '\"Message\": \"Success\"'+
          '}');

        response.setStatusCode(200);
        return response;
      }
      
      public static HttpResponse SchedulePost(){
        HttpResponse response = new HttpResponse();
        response.setBody('{\"time\":\"2015-07-02T10:05:19.392\",'+
                          '\"status\":1000,'+
                          '\"message\":\"Success\"}'
                          );
        response.setStatusCode(200);
        return response;
      }
       public static HttpResponse mocktwitterConnect(){
        HttpResponse response = new HttpResponse();        
        return response;
      }
      public static HttpResponse userRegister(){
        HttpResponse response = new HttpResponse();
        response.setBody('{'+
          '\"Status\": 1000,'+
          '\"Message\": \"Success\"'+
          '}');

        response.setStatusCode(200);
        return response;
      }

      public static HttpResponse sendInvite() {
        HttpResponse response = new HttpResponse();
        response.setBody('{'+
          '\"Status\": 1000,'+
          '\"Message\": \"Success\"'+
          '}');

        response.setStatusCode(200);
        return response;
      }
}