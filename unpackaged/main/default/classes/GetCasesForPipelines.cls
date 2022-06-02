public with sharing class GetCasesForPipelines {
    public static void GetCasesForPipelines() {
        
       List<Case> cases = [SELECT Id, Pipelines_checkbox__c, Pipelines_test__c FROM Case]; 
        //added a comment

        for (Case cs : cases) {
            cs.Pipelines_checkbox__c = true;
            cs.Pipelines_test__c = 'Test';
        }

        insert cases;
    }
}
