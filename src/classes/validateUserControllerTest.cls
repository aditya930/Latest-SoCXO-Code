@IsTest

public class validateUserControllerTest {



//First time users to socxo will be redirected to the login page for authentication. The method below tests it.
static testMethod void ValidateRedirect () {

PageReference pageRef = Page.validateUserPage;
Test.setCurrentPage(pageref);
validateUserController con = new validateUserController();
String nextPage = con.redir().getUrl();
system.assertequals(nextPage,'/apex/socxomainpage');

}

}