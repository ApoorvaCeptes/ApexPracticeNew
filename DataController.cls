/**
 * @class DataController
 * 
 * The DataController class is responsible for managing and retrieving records for different Salesforce sObjects (Account, Contact, Opportunity).
 * It uses a map of IQueryHandler implementations (AccountDataService, ContactDataService, and OpportunityDataService) to handle the retrieval of records.
 * Based on the input sObject name, the appropriate handler is selected, and the records are fetched and logged.
 */
public with sharing class DataController {
    /** 
     * A map that holds the sObject names (like 'Account', 'Contact', 'Opportunity')...
     *  ...and their corresponding data service handlers implementing the IQueryHandler interface.
     */
    private static Map<String, IQueryHandler> dataHandlers = new Map<String, IQueryHandler> {
        'Account' => new AccountDataService(),
        'Contact' => new ContactDataService(),
        'Opportunity' => new OpportunityDataService()
    };

      /**
     * @description Fetches records for the specified sObject name.
     * The method checks if there is a corresponding data handler for the given sObject.
     * If a handler is found, it uses the handler to fetch the records and logs the result.
     * If no handler is found, it logs a message indicating no handler exists for the given sObject.
     * 
     * @param sObjectName - The name of the sObject for which records are to be fetched (e.g., 'Account', 'Contact', 'Opportunity').
     */
    public static void fetchSObjectRecords(String sObjectName) {
        // Check if a handler exists for the specified sObject name
        if (dataHandlers.containsKey(sObjectName)) {
            // Retrieve the corresponding handler and fetch records
            IQueryHandler handler = dataHandlers.get(sObjectName);
            List<sObject> results = handler.fetchRecords();
            System.debug('Records for ' + sObjectName + ': ' + results);
            System.debug('Records Length ' + results.size());
        } else {
            System.debug('No handler found for SObject: ' + sObjectName);
        }
    }
}