/**
 * @class AccountDataService
 * 
 * The AccountDataService class implements the IQueryHandler interface, specifically for querying Account records.
 * This class provides an implementation of the fetchRecords() method, which fetches a limited number of Account records
 * from Salesforce based on a SOQL query.
 * 
 * It returns a List of Account records, with a maximum of 10 records as defined by the LIMIT clause in the SOQL query.
 */
public with sharing class AccountDataService implements IQueryHandler {
    /**
     * @description Fetches a list of Account records from Salesforce.
     * This implementation queries the Account object, selecting the Id and Name fields,
     * and limits the result to the first 10 records.
     * 
     * @return List<Account> - A list of Account records fetched from Salesforce.
     */
    public List<Account> fetchRecords() {
        return [SELECT Id, Name FROM Account LIMIT 10];
    }
}