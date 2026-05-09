### UDataTable


Imported spreadsheet table.

**属性**:

- `UAssetImportData AssetImportData [The file this data table was imported from, may be empty]`
- `FString ImportKeyField [Explicit field in import data to use as key. If this is empty it uses Name for JSON and the first field found for CSV]`
- `bool bIgnoreExtraFields [Set to true to ignore extra fields in the import data, if false it will warn about them]`
- `bool bIgnoreMissingFields [Set to true to ignore any fields that are expected but missing, if false it will warn about them]`
- `bool bPreserveExistingValues [Set to true to preserve existing values for any fields that are expected but missing in the CSV file. If false, missing fields will be populated with default values.]`
- `bool bStripFromClientBuilds [Set to true to not cook this data table into client builds. Useful for sensitive tables that only servers should know about.]`


**方法**:

- `EmptyTable()`
- `TArray<FName> GetRowNames() const`
- `RemoveRow(FName RowName)`
- `AddRow(FName RowName, ? InRow)`
- `bool FindRow(FName RowName, ? OutRow) const`
- `GetAllRows(? OutArray) const`
- `bool DoesRowExist(FName RowName) const`  
  Returns whether or not Table contains a row named RowName
- `bool ExportToCSVFile(FString CSVFilePath) const`  
  Export a Data Table to CSV file.
@param       CSVFilePath     The file path of the CSV file to write (output file is UTF-8).
@return      True if the operation succeeds, check the log for errors if it didn't succeed.
- `bool ExportToCSVString(FString& OutCSVString) const`  
  Export a Data Table to CSV string.
@param       OutCSVString Output representing the contents of a CSV file.
@return      True if the operation succeeds, check the log for errors if it didn't succeed.
- `bool ExportToJSONFile(FString JSONFilePath) const`  
  Export a Data Table to JSON file.
@param       JSONFilePath The file path of the JSON file to write (output file is UTF-8).
@return      True if the operation succeeds, check the log for errors if it didn't succeed.
- `bool ExportToJSONString(FString& OutJSONString) const`  
  Export a Data Table to JSON string.
@param       OutJSONString Output representing the contents of a JSON file.
@return      True if the operation succeeds, check the log for errors if it didn't succeed.
- `bool FillFromCSVFile(FString CSVFilePath, UScriptStruct ImportRowStruct = nullptr)`  
  Empty and fill a Data Table from CSV file.
@param       CSVFilePath                     The file path of the CSV file.
@param       ImportRowStruct         Optional row struct to apply on import. If set will also force the import to run automated (no questions or dialogs).
@return      True if the operation succeeds, check the log for errors if it didn't succeed.
- `bool FillFromCSVString(FString CSVString, UScriptStruct ImportRowStruct = nullptr)`  
  Empty and fill a Data Table from CSV string.
@param       CSVString                       The Data that representing the contents of a CSV file.
@param       ImportRowStruct         Optional row struct to apply on import. If set will also force the import to run automated (no questions or dialogs).
@return      True if the operation succeeds, check the log for errors if it didn't succeed.
- `bool FillFromJSONFile(FString JSONFilePath, UScriptStruct ImportRowStruct = nullptr)`  
  Empty and fill a Data Table from JSON file.
@param       JSONFilePath            The file path of the JSON file.
@param       ImportRowStruct         Optional row struct to apply on import. If set will also force the import to run automated (no questions or dialogs).
@return      True if the operation succeeds, check the log for errors if it didn't succeed.
- `bool FillFromJSONString(FString JSONString, UScriptStruct ImportRowStruct = nullptr)`  
  Empty and fill a Data Table from JSON string.
@param       JSONString                      The Data that representing the contents of a JSON file.
@param       ImportRowStruct         Optional row struct to apply on import. If set will also force the import to run automated (no questions or dialogs).
@return      True if the operation succeeds, check the log for errors if it didn't succeed.
- `TArray<FString> GetColumnAsString(FName PropertyName) const`  
  Export from the DataTable all the row for one column. Export it as string. The row name is not included.
@see GetDataTableColumnNames.
@see GetDataTableColumnNameFromExportName.
- `GetColumnExportNames(TArray<FString>& OutExportColumnNames) const`  
  Get the friendly export name of each column in this Data Table.
@see GetDataTableColumnNameFromExportName.
- `bool GetColumnNameFromExportName(FString ColumnExportName, FName& OutColumnName) const`  
  Get the raw property name of a data table column from its friendly export name.
@return True if a column was found for the friendly name, false otherwise.
- `GetColumnNames(TArray<FName>& OutColumnNames) const`  
  Get the name of each column in this Data Table.
@note These are always the raw property names (@see GetDataTableColumnAsString) rather than the friendly export name that would be used in a CSV/JSON export (@see GetDataTableColumnNameFromExportName).
- `GetRowNames(TArray<FName>& OutRowNames) const`
- `const UScriptStruct GetRowStruct() const`  
  Get the row struct used by the given Data Table, if any

---

