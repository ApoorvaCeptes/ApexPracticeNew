/**
 * @interface IQueryHandler
 * 
 * This interface defines a contract for classes that handle querying records from Salesforce.
 * Any class implementing this interface must provide an implementation for the fetchRecords() method.
 * The fetchRecords() method is expected to return a List of sObject records based on a specific query logic.
 */
public interface IQueryHandler {
        /**
     * @description This method is used to fetch records from Salesforce.
     * It must be implemented by any class that is responsible for querying data.
     * The return value should be a List of sObject records, which can be any standard or custom object in Salesforce.
     * 
     * @return List<sObject> - A list of sObject records.
     */
    List<sObject> fetchRecords();
}