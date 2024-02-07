public class ContactController {

    public static List<Contact> fetchContacts() {
        return [SELECT Id, FirstName, LastName
               	FROM Contact
               	LIMIT 5];
    }
    
    public static void createContacts(Integer numberToCreate) {
        List<Contact> conList = new List<Contact>();
        for (Integer i = 0; i <= numberToCreate; i++) {
            Contact c = new Contact();
            c.FirstName = 'Pamela';
			c.LastName = 'Nguyen' + i;
            conList.add(c);
        }
        insert conList;
    }
}