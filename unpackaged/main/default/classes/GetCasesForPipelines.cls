public with sharing class GetCasesForPipelines {
    public static void GetCasesForPipelines() {

        List<Case> cases = [SELECT Id, Pipelines_checkbox__c, Pipelines_test__c FROM Case LIMIT 5];

        for (Case cs : cases) {
            cs.Pipelines_checkbox__c = true;
            cs.Pipelines_test__c = 'Hotfixes';
            System.debug('cases ' + cs);
        }
        update cases;

    }
}
