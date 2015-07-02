@istest

public with sharing class socxoApiHandler_test{
       public static testMethod void testsocxoApiHandler() {
              socxoApiHandler controller= new socxoApiHandler();

       controller.userRegister('2000.00',
           'inv',
           'cochin',
           'kerala');
       
       
       }
   }