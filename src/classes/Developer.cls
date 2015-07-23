public class DeveloperController {

	Public Developer newDev { get; set; }
	Public String inputEmail { get; set; }

	public Developer() {

        newDev = new Developer();

    }

    public static void save() {
		
		/*
		List<Account> developerList = [SELECT Id FROM Developer__c WHERE Email__c = :inputEmail];
		if (developerList.size() >= 1) {
            ApexPages.Message msg = new ApexPages.Message(ApexPages.Severity.FATAL, 'Duplicate email on file.');
            ApexPages.addMessage(msg);
            return null;
        } else {
        	System.debug('go and save.');
        }
        */

    }

}