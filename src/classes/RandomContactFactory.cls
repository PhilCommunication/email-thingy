public class RandomContactFactory {

    public static List<Contact> generateRandomContacts(Integer totalNroContactos, String lastName){
        List<Contact> generatedContactsList = new List<Contact>();
        for(Integer i = 0; i < totalNroContactos; i++){
			Contact newContact = new Contact(FirstName='Test '+i, LastName=lastName);   
        	generatedContactsList.add(newContact);
        }
        return generatedContactsList;
    }
}