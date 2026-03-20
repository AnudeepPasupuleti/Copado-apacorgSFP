@isTest
private class PlayerServiceTest {
    @isTest
    static void testBuildSummary() {
        // Arrange: Create a Player__c record
        Player__c player = new Player__c(
            Age__c = 25,
            Highest_Score__c = 100,
            Matches_Played__c = 50,
            Team__c = 'Mumbai Indians'
        );
        insert player;

        // Act: Call the buildSummary method
        PlayerService.PlayerSummary summary = PlayerService.buildSummary(player);

        // Assert: Check that the summary fields are populated
        System.assertNotEquals(null, summary);
        System.assertEquals(25, summary.Age);
        System.assertEquals(100, summary.HighestScore);
        System.assertEquals(50, summary.MatchesPlayed);
        System.assertEquals('Mumbai Indians', summary.Team);
    }
}