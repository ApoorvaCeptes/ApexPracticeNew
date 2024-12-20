/**
 * @class ContactDataService
 * 
 * The ContactDataService class implements the IQueryHandler interface for querying Contact records.
 * This class provides an implementation of the fetchRecords() method, which retrieves a limited number of Contact records
 * from Salesforce using a SOQL query.
 * 
 * It returns a List of Contact records, with a maximum of 10 records as defined by the LIMIT clause in the SOQL query.
 */
public with sharing class ContactDataService implements IQueryHandler {
    /**
 * @description Fetches a list of Contact records from Salesforce.
 * This implementation queries the Contact object, selecting the Id, FirstName, and LastName fields,
 * and limits the result to the first 10 records.
 * 
 * @return List<Contact> - A list of Contact records fetched from Salesforce.
 */
    public List<Contact> fetchRecords() {
        return [SELECT Id, FirstName, LastName FROM Contact LIMIT 10];
    }
}