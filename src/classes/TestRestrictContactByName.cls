@isTest
public class TestRestrictContactByName {

    @isTest static void TestDeleteAccountWithOneOpportunity() {
        Contact newContact = new Contact(FirstName='Phil', LastName='INVALIDNAME');
        
        Database.UpsertResult result = Database.upsert(newContact, false);
        
        System.assert(!result.isSuccess());
        System.assertEquals('The Last Name \"INVALIDNAME\" is not allowed for DML', result.getErrors()[0].getMessage());
    	System.debug(''+ result.getErrors()[0].getMessage());
    }
}