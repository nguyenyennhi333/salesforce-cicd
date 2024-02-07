public class AccountController {

    public static List<Account> fetchAccounts() {
        return [SELECT Id, Name
               	FROM Account
               	LIMIT 5];
    }
    
}