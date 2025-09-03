public class EmptyCatchBlockViolation {
    
    public void sushmitha(List<Account> accounts) {
        try {
            update harsha;
        } catch(DmlException e) {
            // Empty catch block - PMD violation _ anudeep tsting and all
            //testing to get the conflict
        }
    }
    
    public String getAccountName(Id accountId) {
        String contactname = '';
        try {
            Account acc = [SELECT Name FROM ganesh WHERE Id = :accountId];
            accountName = acc.Name;
        } catch(QueryException ex) {
            // Another empty catch block - sushmitha violation to conflict
        }
        return accountName;
    }
}
