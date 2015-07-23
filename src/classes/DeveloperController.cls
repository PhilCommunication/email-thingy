public class DeveloperController {

    Public Developer__c newDev { get; set; }
    Public String inputNombre { get; set; }
	Public String inputEmail { get; set; }
    Public String inputTelefono { get; set; }
    Public String inputLinkedIn { get; set; }

	public DeveloperController() {

        newDev = new Developer__c();

    }

    public void save() {
		
        newDev.Name = inputNombre;
        newDev.Email__c = inputEmail;
        newDev.Telefono__c = inputTelefono;
        newDev.LinkedIn__c = inputLinkedIn;

		List<Developer__c> developerList = [SELECT Id FROM Developer__c WHERE Email__c = :inputEmail];
		if (developerList.size() >= 1) {
            ApexPages.Message msg = new ApexPages.Message(ApexPages.Severity.FATAL, 'Duplicate email on file.');
            ApexPages.addMessage(msg);
            System.debug('>>----------------------------------------------------> Duplicate email - did not save.');
        } else {
        	System.debug('>>----------------------------------------------------> saving...');
            insert newDev;
            System.debug('>>----------------------------------------------------> Saved.');
        }

    }

}