/**
 * @class OpportunityDataService
 * 
 * The OpportunityDataService class implements the IQueryHandler interface for querying Opportunity records.
 * This class provides an implementation of the fetchRecords() method, which retrieves a limited number of Opportunity records
 * from Salesforce using a SOQL query.
 * 
 * It returns a List of Opportunity records, with a maximum of 10 records as defined by the LIMIT clause in the SOQL query.
 */
public with sharing class OpportunityDataService implements IQueryHandler {
    /**
 * @description Fetches a list of Opportunity records from Salesforce.
 * This implementation queries the Opportunity object, selecting the Id, Name, and StageName fields,
 * and limits the result to the first 10 records.
 * 
 * @return List<Opportunity> - A list of Opportunity records fetched from Salesforce.
 */
    public List<Opportunity> fetchRecords() {
        return [SELECT Id, Name, StageName FROM Opportunity LIMIT 10];
    }
}