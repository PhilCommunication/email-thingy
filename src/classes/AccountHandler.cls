public class AccountHandler {

    public static Account insertNewAccount(String accountName){
        Account myAccount = new Account(Name=accountName);
        try {
            insert myAccount;
        	return myAccount;
        } catch (DmlException e) {
    		System.debug('A DML exception has occurred: ' + e.getMessage());
            return null;
		}
    }
}