public class EmptyCatchBlockViolation {
    
    public void Anudeep(List<Account> accounts) {
        try {
            update contacts;
        } catch(DmlException e) {
            // Empty catch block - PMD violation _ aananaya is good girl. She is bad girl..
        }
    }
    
    public String Harsha(Id accountId) {
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
