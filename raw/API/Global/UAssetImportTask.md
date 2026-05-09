### UAssetImportTask


Contains data for a group of assets to import

**属性**:

- `FString DestinationName [Optional custom name to import as (if you are using interchange the name must be set in a pipeline and this field will be ignored)]`
- `FString DestinationPath [Path where asset will be imported to]`
- `UFactory Factory [Optional factory to use]`
- `FString Filename [Filename to import]`
- `TArray<FString> ImportedObjectPaths [Paths to objects created or updated after import]`
- `UObject Options [Import options specific to the type of asset]`
- `bool bAsync [Perform the import asynchronously for file formats where async import is available]`
- `bool bAutomated [Avoid dialogs]`
- `bool bReplaceExisting [Overwrite existing assets]`
- `bool bReplaceExistingSettings [Replace existing settings when overwriting existing assets]`
- `bool bSave [Save after importing]`


**方法**:

- `TArray<UObject> GetObjects() const`  
  Get the list of imported objects.
Note that if the import was asynchronous, this will block until the results are ready.
To test whether asynchronous results are ready or not, use IsAsyncImportComplete().
- `bool IsAsyncImportComplete() const`  
  Query whether this asynchronous import task is complete, and the results are ready to read.
This will always return true in the case of a blocking import.

---

