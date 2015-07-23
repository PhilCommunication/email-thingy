public class NewCaseListController {

    public List<Case> getNewCases(){
        
        List<Case> caseList = Database.query(
            'SELECT ID, CaseNumber, Status ' +
            'FROM Case ' +
            'WHERE Status=\'New\''
        );
        return caseList;
    }
}