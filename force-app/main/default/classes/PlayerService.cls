public with sharing class PlayerService {
    public class PlayerSummary {
        @AuraEnabled public Id playerId;
        @AuraEnabled public String name;
        @AuraEnabled public Integer age;
        @AuraEnabled public Integer highestScore;
        @AuraEnabled public Integer matchesPlayed;
        @AuraEnabled public String team;
        @AuraEnabled public String summaryText;
    }

    public static PlayerSummary buildSummary(Player__c p) {
        PlayerSummary s = new PlayerSummary();
        s.playerId = p.Id;
        s.name = p.Name;
        s.age = (p.Age__c == null) ? null : Integer.valueOf(p.Age__c);
        s.highestScore = (p.Highest_Score__c == null) ? null : Integer.valueOf(p.Highest_Score__c);
        s.matchesPlayed = (p.Matches_Played__c == null) ? null : Integer.valueOf(p.Matches_Played__c);
        s.team = p.Team__c;

        s.summaryText =
            'Player ' + p.Name +
            ' | Team: ' + String.valueOf(p.Team__c) +
            ' | Age: ' + String.valueOf(p.Age__c) +
            ' | Matches: ' + String.valueOf(p.Matches_Played__c) +
            ' | Highest: ' + String.valueOf(p.Highest_Score__c);

        return s;
    }
}
