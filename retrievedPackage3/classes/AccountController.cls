public class AccountController {

    public List<CountryCodes__c> code {get;set;}
   
    public AccountController()
    {
        Map<String,CountryCodes__c> allCodes = CountryCodes__c.getAll();
        code = allCodes.values();
    }  

}