public class EmptyCatchBlockViolation {
    
    public void processRecords(List<Account> accounts) {
        try {
            update contacts;
        } catch(DmlException e) {
            // Empty catch block - PMD violation _ anudeep tsting and all
            //testing to get the conflict
        }
    }
    
    public String getAccountName(Id accountId) {
        String accountName = '';
        try {
            Account acc = [SELECT Name FROM contact WHERE Id = :accountId];
            accountName = acc.Name;
        } catch(QueryException ex) {
            // Another empty catch block - PMD violation
        }
        return accountName;
    }
}
