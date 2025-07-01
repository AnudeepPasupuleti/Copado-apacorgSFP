public class EmptyCatchBlockViolation {
    
    public void processRecords(List<Account> accounts) {
        try {
            update accounts;
        } catch(DmlException e) {
            // Empty catch block - PMD violation
        }
    }
    
    public String getAccountName(Id accountId) {
        String accountName = '';
        try {
            Account acc = [SELECT Name FROM Account WHERE Id = :accountId];
            accountName = acc.Name;
        } catch(QueryException ex) {
            // Another empty catch block - PMD violation
        }
        return accountName;
    }
}