global with sharing class sfUsersInviteController {
    @RemoteAction
    global static List<User> getUserDetails(){    
        List <User> lst_users = [SELECT Id, Email, LastName, FirstName, Profile.Name FROM User];
        return lst_users;
    }
    
    @RemoteAction
    global static String pushEmails(String emails){
        
        socxoApiHandler uc = new socxoApiHandler();
        String response = uc.sendInvite(emails);
        return response;
    }
}