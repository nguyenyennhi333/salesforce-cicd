@isTest
private class ContactControllerTest {
    
    @TestSetUp
    static void setupContactDatas() {
        List<Contact> conList = new List<Contact>();
        for (Integer i = 0; i <= 5; i++) {
            Contact c = new Contact();
            c.FirstName = 'Pamela';
            c.LastName = 'Test' + i;
            conList.add(c);
        }
        insert conList;
    }
    
    
    @isTest
    static void testFetchContact() {
        List<Contact> listCon = new List<Contact>();
        List<Contact> queryContacts = [SELECT Id, FirstName, LastName
               							FROM Contact WHERE FirstName like 'Pamela%'
               							LIMIT 5];
        listCon = ContactController.fetchContacts();
        Integer contactSize = listCon.size();
        System.assertEquals(5, contactSize);
    }
}