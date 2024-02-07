public class ContactController {

    public static List<Contact> fetchContacts() {
        return [SELECT Id, FirstName, LastName
               	FROM Contact
               	LIMIT 5];
    }
}