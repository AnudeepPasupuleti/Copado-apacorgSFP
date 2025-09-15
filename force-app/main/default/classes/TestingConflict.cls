public class TestingConflict {
    
    /**
     * Method to print "Testing Conflict" message
     */
    public static void printMessage() {
        System.debug('Testing Conflict');
    }
    
    /**
     * Alternative method that returns the message as a string
     */
    public static String getMessage() {
        return 'Testing Conflict';
    }
    
    /**
     * Method to print message with additional context
     */
    public static void printMessageWithContext() {
        System.debug('*** Testing Conflict - Class Execution ***');
        System.debug('Current User: ' + UserInfo.getName());
        System.debug('Execution Time: ' + System.now());
    }
}