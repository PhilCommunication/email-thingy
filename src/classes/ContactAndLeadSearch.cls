public class ContactAndLeadSearch {

    public static List<List< SObject>> searchContactsAndLeads(String name){
        List<List<sObject>> searchList = [FIND :name IN NAME FIELDS 
                   RETURNING Contact(FirstName,LastName), Lead(FirstName,LastName)];

        Contact[] searchContact = (Contact[])searchList[0];
		Lead[] searchLead = (Lead[])searchList[1];
        
        return searchList;
    }
}