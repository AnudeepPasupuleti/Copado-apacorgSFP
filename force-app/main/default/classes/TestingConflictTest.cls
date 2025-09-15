@isTest
public class TestingConflictTest {
    
    /**
     * Test method for printMessage()
     */
    @isTest
    static void testPrintMessage() {
        Test.startTest();
        
        // Call the method to print message
        TestingConflict.printMessage();
        
        Test.stopTest();
        
        // Since System.debug doesn't return a value, we verify the method executes without exception
        // In a real scenario, you might want to capture debug logs for verification
        System.assert(true, 'printMessage method executed successfully');
    }
    
    /**
     * Test method for getMessage()
     */
    @isTest
    static void testGetMessage() {
        Test.startTest();
        
        String result = TestingConflict.getMessage();
        
        Test.stopTest();
        
        // Verify the returned message
        System.assertEquals('Testing Conflict', result, 'getMessage should return "Testing Conflict"');
        System.assertNotEquals(null, result, 'Result should not be null');
        System.assert(result.length() > 0, 'Result should not be empty');
    }
    
    /**
     * Test method for printMessageWithContext()
     */
    @isTest
    static void testPrintMessageWithContext() {
        Test.startTest();
        
        // Call the method to print message with context
        TestingConflict.printMessageWithContext();
        
        Test.stopTest();
        
        // Verify method executes without exception
        System.assert(true, 'printMessageWithContext method executed successfully');
    }
    
    /**
     * Test method to verify all methods can be called in sequence
     */
    @isTest
    static void testAllMethodsSequence() {
        Test.startTest();
        
        // Test calling all methods in sequence
        TestingConflict.printMessage();
        String message = TestingConflict.getMessage();
        TestingConflict.printMessageWithContext();
        
        Test.stopTest();
        
        // Verify the sequence executed successfully
        System.assertEquals('Testing Conflict', message, 'All methods should work in sequence');
    }
    
    /**
     * Test method to verify static methods can be called multiple times
     */
    @isTest
    static void testMultipleInvocations() {
        Test.startTest();
        
        // Call methods multiple times
        for(Integer i = 0; i < 5; i++) {
            TestingConflict.printMessage();
            String result = TestingConflict.getMessage();
            System.assertEquals('Testing Conflict', result, 'Method should return consistent results');
        }
        
        Test.stopTest();
        
        System.assert(true, 'Multiple invocations completed successfully');
    }
}