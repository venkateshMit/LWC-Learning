/**
 * @description       : 
 * @author            :Venkatesh Kulkarni
 * @group             : 
 * @last modified on  : 10-06-2023
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public class OpportunityData {
    /**
    * @description 
    * @author ChangeMeIn@UserSettingsUnder.SFDoc | 10-06-2023 
    * @param accId 
    * @return List<Opportunity> 
    **/
    @AuraEnabled(Cacheable=true)
    public static List<Opportunity> getOpportunities(String accId,Decimal amt){
        try {
            return [SELECT Id,Name, Amount FROM Opportunity WHERE AccountId =: accId and Amount<:amt];
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
}