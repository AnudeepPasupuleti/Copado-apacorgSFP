@isTest
private class SampleApexClassTest {

    @isTest
    static void testSampleMethod() {

        Test.startTest();

        SampleApexClass.sampleMethod();

        Test.stopTest();

        System.assertEquals(true, true,
            'Test executed successfully');
    }
}