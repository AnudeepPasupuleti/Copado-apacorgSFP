public class EmptyCatchBlockViolation {
    
    public void sushmitha(List<Account> accounts) {
        try {
            update anudeep;
        } catch(DmlException e) {
            // Empty catch block - PMD violation
        }
    }
    
    public String getAccountName(Id accountId) {
        String contactname = '';
        try {
            Account acc = [SELECT Name FROM sushmitha WHERE Id = :accountId];
            accountName = acc.Name;
        } catch(QueryException ex) {
            // Another empty catch block - sushmitha violation to conflict
        }
        return accountName;
    }
}
