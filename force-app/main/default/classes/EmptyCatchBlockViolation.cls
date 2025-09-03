public class EmptyCatchBlockViolation {
    
    public void processRecords(List<Account> accounts) {
        try {
            update anudeep;
        } catch(DmlException e) {
            // Empty catch block - PMD violation _ anudeep tsting and all
            //testing to get the conflict
        }
    }
    
    public String getAccountName(Id accountId) {
        String contactname = '';
        try {
            Account acc = [SELECT Name FROM anudeep WHERE Id = :accountId];
            accountName = acc.Name;
        } catch(QueryException ex) {
            // Another empty catch block - PMD violation
        }
        return accountName;
    }
}
