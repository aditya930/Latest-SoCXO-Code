@IsTest
public class BlurbControllerTest{
    static testMethod void authorize_test(){
        BlurbController bController = new BlurbController();
         
        //authController.code = 'code123';
        bController.username = 'manager@testenv.com';
        bController.password = '123456';
        bController.x1 ='1';
        bController.xfb3 = 'facebook';
        //authController.lstBlurbs = (wrapper1:[BlurbId=14091, CategoryId=1, Description=sample, Editmode=null, EnterpriseBlurbId=null, FeedName=The Hindu - Opinion, ImageUrl=http://www.thehindu.com/multimedia/dynamic/02458/02DMCNIRJALA_EKADA_2458032c.jpg, Title= As humanity dries up, Url=http://www.thehindu.com/opinion/columns/Ziya_Us_Salam/capital-check-as-humanity-dries-up-in-dellhi/article7374892.ece?utm_source=RSS_Feed&utm_medium=RSS&utm_campaign=RSS_Syndication, UserBlurbId=5593db35c4ea8a58c4dbe24e, comment=null, fbcomment=null, fbdecription=null, fbtittle=null, lnkcomment=null, lnkdecription=null, lnktittle=null, tweeterpost=null])
        PageReference pageRef = Page.BlurbControllerPage;
        Test.setCurrentPage(pageRef);
        ApexPages.currentPage().getParameters().put('code','code123');
        ApexPages.currentPage().getParameters().put('state','state123');
        //ApexPages.currentPage().getParameters().put('BlurbId','14132');
        //ApexPages.currentPage().getParameters().put('categoryId','1');
        bController = new BlurbController();
        
        BlurbController.wrapper1 blurbDetails = new BlurbController.wrapper1();
        blurbDetails.BlurbId = '14132';
        blurbDetails.UserBlurbId = '559512efc4ea8a60088b3db6';
        blurbDetails.EnterpriseBlurbId = '3';
        blurbDetails.Title = 'test';
        blurbDetails.Description = 'test';
        blurbDetails.ImageUrl = 'testimage';
        blurbDetails.Url = 'testurl';
        blurbDetails.comment = 'test';
        blurbDetails.FeedName = 'testfeed';
        blurbDetails.CategoryId = '1';
        blurbDetails.categoryName = 'Industry';
        blurbDetails.Editmode = true;
        blurbDetails.fbtittle = 'testTitle';
        blurbDetails.fbcomment = 'testComment';
        blurbDetails.fbdecription = 'testDesc';
        blurbDetails.tweeterpost = 'testTweet';
        blurbDetails.lnktittle = 'linkTitle';
        blurbDetails.lnkcomment = 'linkComment';
        blurbDetails.lnkdecription = 'lnkDesc';

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

        bController.Categories();
        bController.showselectedblurb = false;
        ApexPages.currentPage().getParameters().put('BlurbId','14132');
        ApexPages.currentPage().getParameters().put('categoryId','1');
        PageReference testPage = bController.Categories();
        System.assertEquals(testPage,null);
        bController.test1();
        bController.postinfb();
        bController.postintwitter();
        bController.postinLinkedin();
        bController.xfb3 = 'facebook';
        bController.scheduletest();
        bController.listAllBlurbs();
        bController.postinChatter();
        bController.getstatusofblurb();
        bController.stopeditblurbtopost();
        bController.editblurbtopost();

    }
}