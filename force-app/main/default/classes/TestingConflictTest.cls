@isTest
public class TestingConflictTest {
    
    /**
     * Test method for printMessage() - MODIFIED TO EXPECT DIFFERENT OUTPUT
     */
    @isTest
    static void testPrintMessage() {
        Test.startTest();
        
        // Call the modified method
        TestingConflict.printMessage();
        
        Test.stopTest();
        
        // This assertion will conflict with original expectations
        System.assert(true, 'Modified printMessage method executed - CONFLICT VERSION');
    }
    
    /**
     * Test method for getMessage() - MODIFIED EXPECTATIONS
     */
    @isTest
    static void testGetMessage() {
        Test.startTest();
        
        String result = TestingConflict.getMessage();
        
        Test.stopTest();
        
        // Changed expected value - will conflict with original test
        System.assertEquals('Testing Deployment Conflict - Version 2.0', result, 'getMessage should return modified message');
        System.assertNotEquals('Testing Conflict', result, 'Should not return original message');
    }
    
    /**
     * Test method for printMessageWithContext() - METHOD SIGNATURE CHANGED
     */
    @isTest
    static void testPrintMessageWithContext() {
        Test.startTest();
        
        // Method now requires parameter - will break original version
        TestingConflict.printMessageWithContext('Production');
        
        Test.stopTest();
        
        System.assert(true, 'Modified printMessageWithContext with parameter executed');
    }
    
    /**
     * MODIFIED - Different logic that will conflict
     */
    @isTest
    static void testAllMethodsSequence() {
        Test.startTest();
        
        // Different sequence and expectations
        TestingConflict.printMessage();
        String message = TestingConflict.getMessage();
        TestingConflict.printMessageWithContext('QA Environment');
        TestingConflict.newConflictMethod(); // NEW method call
        
        Test.stopTest();
        
        // Different assertion
        System.assert(message.contains('Deployment Conflict'), 'Should contain Deployment Conflict text');
    }
    
    /**
     * COMPLETELY NEW TEST - will conflict if someone else added different test
     */
    @isTest
    static void testNewConflictMethod() {
        Test.startTest();
        
        TestingConflict.newConflictMethod();
        
        Test.stopTest();
        
        System.assert(true, 'New conflict method test passed');
    }
}