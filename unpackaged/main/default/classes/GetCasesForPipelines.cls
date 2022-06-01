public with sharing class GetCasesForPipelines {
    public static void GetCasesForPipelines() {

       List<Case> cases = [SELECT Id, Pipelines_checkbox__c, Pipelines_test__c FROM Case]; 
        //added a comment
    }
}
