@isTest
private class AccountControllerTest {
    
    @TestSetUp
    static void setupAccountDatas() {
        List<Account> accList = new List<Account>();
        for (Integer i = 0; i <= 5; i++) {
            Account a = new Account();
            a.Name = 'Test Github' +i;
            accList.add(a);
        }
        insert accList;
    }
    
    
    @isTest
    static void testFetchAccount() {
        List<Account> listAcc = new List<Account>();
        List<Account> queryAccs = [SELECT Id, Name
               							FROM Account
               							LIMIT 5];
        listAcc = AccountController.fetchAccounts();
        System.assertEquals(5, listAcc.size());
    }
}