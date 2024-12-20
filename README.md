# Get records from sObject by passing the sObject Name

1. "IQueryHandler" Interface:
  - Any class that handles fetching records for an sObject can implement this interface, specifically the `fetchRecords()` method.

2. "AccountDataService" Class:
  - Implements `IQueryHandler` to fetch `Account` records using a SOQL query, returning `Id` and `Name` fields.

3. "ContactDataService" Class:
  - Implements `IQueryHandler` to fetch `Contact` records using a SOQL query, returning `Id`, `FirstName`, and `LastName` fields.

4. "OpportunityDataService" Class:
  - Implements `IQueryHandler` to fetch `Opportunity` records using a SOQL query, returning `Id`, `Name`, and `StageName` fields.

5. "DataController" Class:
  - Manages the querying of records for different sObjects. It uses a map to dynamically select the appropriate handler (like `AccountDataService`, `ContactDataService`, or `OpportunityDataService`) based on the provided sObject name, then fetches and logs the records.
