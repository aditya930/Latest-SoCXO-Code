public class TestCallouts
{
    
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