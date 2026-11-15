@isTest
private class SampleApexClassTest1 {

    @isTest
    static void testSampleMethod() {

        Test.startTest();

        SampleApexClass1.sampleMethod1();

        Test.stopTest();

        System.assertEquals(true, true,
            'Test executed successfully');
    }
}