public with sharing class AccountController {
    @AuraEnabled(cacheable=true)
    public static List<Account> getAccounts(Id accountId){
        return [ SELECT Name, AnnualRevenue, Industry
                 FROM Account
                 WITH SECURITY_ENFORCED
                 ORDER BY Name
                 ];
    }
}
