public with sharing class validateUserController {
 
 public PageReference Redir() {

        PageReference newPage;

        List<SOCXO_token__c> currenttoken = [select Access_Token__c,expireson__c from SOCXO_token__c where  SOCXO_Service__r.SFuser__r.Id =:userinfo.getuserid()];

//Checking whether the user is logging in for the first time and also whether the existing token is a valid one. If the token is not valid, prompt the user to the login again.

   if(currenttoken.size() > 0)
        {  system.debug('SoCXO access token is:::');
            if(currenttoken[0].Access_Token__c=='' || currenttoken[0].Access_Token__c==null)
               {
               // system.debug('SoCXO access token is null:::');
                 newpage = page.socxoLoginPage;
               
               }
                
            else if(currenttoken[0].Access_Token__c!=null)
               {
                    if(currenttoken[0].expireson__c > datetime.now())
                       {
                       newpage = page.BlurbControllerPage;
                       }
                    else 
                       {
                       newpage = page.socxoLoginPage;
                       }  
                }}
        else if (currenttoken.size() == 0)
         { 
          newpage = page.socxoLoginPage;
         }
   return newPage.setRedirect(true);

} 


}