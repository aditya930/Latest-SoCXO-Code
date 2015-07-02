@IsTest

Public class socxoLoginPage_Test {

//To test whether we are getting an access token when authenricating.
static testMethod void AuthenticationSuccessTest() {
SingleRequestMock fakeResponse = new SingleRequestMock(200,
                                                 'Complete',
                                                 '[{"access_token":"1THKEVHF9vuNdhDcNzfUPGr_nCroMly3sUMpIsg0ITvXx7L14rUHIEzHzF3jroLB7P_v-_CP8MsdwYuWuxlWNIJVLbTNfNA_INR19ABqDbcmBfbuWVmyimloy_QTwQz3fObqoF1Q-qsvE6yOU-7YYDKj_hCMdi2VpuoaW9OM5V1bcy1OrTDEAs-IT_xaPaNVh0wbkB9U1ZsU0yIsddVL6towmBS4Ym--1D2TBnX9TXRUEQntmqyyMDQQvZsMD844f54eoJLfydgyLjRmOvKcSB85ik1D0C-SxKhQoB89dc1m38Ovyg3QALb_eTRAmyVELu5UCk8v72guUFF09Hl0ZjuvgkQ22-ZJEzMWrr6L7-jnDvJ6AWNhzyBEmCqt2pM6vG0oaMcZmhK8lvKw4GXayEJqeH0L_1SAPDVoln3D_I1wFmVViC_pQGWL4adfFZa68-NN5w","token_type":"bearer","expires_in":31535999,"userName":"rod@socxo.com ",".issued":"Thu, 03 Jul 2014 08:33:17 GMT",".expires":"Fri, 03 Jul 2050 08:33:17 GMT"}]',
                                                  null);
PageReference pageRef = Page.socxoLoginPage;
Test.setCurrentPage(pageref);
socxoLoginController con = new socxoLoginController();
con.password = 'testpassword';
con.username = 'username';
Test.setMock(HttpCalloutMock.class, fakeResponse);
//con.authorize();
String nextPage = con.authorize().getUrl();
system.assertequals(nextPage,'/apex/paneltest002');

//Testing further to check the token expiry.
PageReference pageRef1 = Page.validateUserPage;
Test.setCurrentPage(pageref1);
Dispatcher_Socxo con1 = new Dispatcher_Socxo();
String nextPage1 = con1.redir().getUrl();
system.assertequals(nextPage1,'/apex/paneltest002');



}

//To test whether we are not getting an access token when authenricating.
static testMethod void AuthenticationFailureTest() {
SingleRequestMock fakeResponse = new SingleRequestMock(0,
                                                 'Complete',
                                                 '[{"error":"invalid_grant","error_description":"The user name or password is incorrect."}]',
                                                  null);
PageReference pageRef = Page.socxoLoginPage;
Test.setCurrentPage(pageref);
socxoLoginController con = new socxoLoginController();
con.password = 'testpassword';
con.username = 'username';
Test.setMock(HttpCalloutMock.class, fakeResponse);
//con.authorize();
//String nextPage = con.authorize().getUrl();
con.authorize();
List<Apexpages.Message> msgs = ApexPages.getMessages();
boolean a = false;
        for(Apexpages.Message msg:msgs){
         if (msg.getDetail().contains('The username/password is incorrect'))
           {
            a = true;
           } 
        }
system.assert(a);


}





}