public class TestingConflict {
    
    // Added new class variable that could conflict
    private static final String CONFLICT_MESSAGE = 'Testing Deployment Conflict';
    
    /**
     * Method to print "Testing Deployment Conflict" message - MODIFIED
     */
    public static void printMessage() {
        System.debug('Testing Deployment Conflict - Modified Version');
        System.debug('This change will create a conflict!');
    }
    
    /**
     * Alternative method that returns the message as a string - MODIFIED
     */
    public static String getMessage() {
        return CONFLICT_MESSAGE + ' - Version 2.0';
    }
    
    /**
     * Method to print message with additional context - COMPLETELY CHANGED
     */
    public static void printMessageWithContext(String environment) {
        System.debug('*** CONFLICT SCENARIO - Environment: ' + environment + ' ***');
        System.debug('Modified User: ' + UserInfo.getName());
        System.debug('Modified Time: ' + System.now());
        System.debug('This method signature changed - will cause conflict!');
    }
    
    /**
     * NEW METHOD - will conflict if someone else added different method
     */
    public static void newConflictMethod() {
        System.debug('This is a new method that will conflict with other changes');
    }
}