### UInterchangeManager


**方法**:

- `CancelAllTasks()`  
  This function cancels all tasks and finishes them as fast as possible.
We use this if the user cancels the work or if the editor exits.
@note - This is a asynchronous call. Tasks will be completed (canceled) soon.
- `bool CanReimport(const UObject Object, TArray<FString>& OutFilenames) const`  
  Returns true if Interchange can create this type of asset and is able to translate its source files.
@Param Object - The object we want to reimport.
@Param OutFilenames - An array that is filled with the object's source filenames if the operation is successful.
- `bool CanTranslateSourceData(const UInterchangeSourceData SourceData, bool bSceneImportOnly = false) const`  
  Check whether there is a registered translator for this source data.
This allows us to bypass the original asset tools system to import supported assets.
@Param SourceData - The source data input we want to translate to Uod.
@return True if there is a registered translator that can handle handle this source data, or false otherwise, when bSceneImportOnly is false.
Otherwise, returns true only if the translator supports level import
@Note: Temporary until FBX level import is production ready
- `bool ExportAsset(const UObject Asset, bool bIsAutomated = false)`  
  Call this to start an asset export process. The caller must specify a source data.

@Param Asset - The asset to export.
@Param bIsAutomated - If true, the exporter will not show any UI or dialogs.
@return true if the export succeeds, or false otherwise.
- `bool ExportScene(const UObject World, bool bIsAutomated = false)`  
  Call this to start a scene export process. The caller must specify a source data.
@Param World - The scene to export.
@Param bIsAutomated - If true, the import process will not show any UI or dialogs.
@return true if the export succeeds, or false otherwise.
- `UInterchangeAssetImportData GetAssetImportData(UObject Asset) const`  
  Returns the list of supported formats for a given translator type.
- `const UClass GetRegisteredFactoryClass(const UClass ClassToMake) const`  
  Script helper to get a registered factory for a specified class.
@Param FactoryClass: The class whose registered factory you want to find.
@return: The registered factory class if found, or NULL if no registered factory was found.
- `TArray<FString> GetSupportedAssetTypeFormats(EInterchangeTranslatorAssetType ForTranslatorAssetType, EInterchangeTranslatorType ForTranslatorType = EInterchangeTranslatorType :: Invalid, bool bStrictMatchTranslatorType = false) const`  
  Returns the list of formats supporting the specified translator asset type.
- `TArray<FString> GetSupportedFormats(EInterchangeTranslatorType ForTranslatorType) const`  
  Returns the list of supported formats for a given translator type.
- `TArray<FString> GetSupportedFormatsForObject(const UObject Object, int SourceFileIndex) const`  
  Returns the list of supported formats for a given Object.
- `UInterchangeTranslatorBase GetTranslatorForSourceData(const UInterchangeSourceData SourceData) const`  
  * Return the first translator that can translate the source data.
* @Param SourceData - The source data that you want a translator for.
* @return return a matching translator, or nullptr if no translators exist for the source data.
- `bool ImportAsset(FString ContentPath, const UInterchangeSourceData SourceData, FImportAssetParameters ImportAssetParameters, TArray<UObject>& OutImportedObjects)`  
  Call this to start a synchronous asset import process.
This process can import many different assets into the game content.

@Param ContentPath - The path where the imported assets will be created.
@Param SourceData - The source data input to translate.
@param ImportAssetParameters - All parameters that need to be passed to the import asset function.
@return true if the import succeeds, or false otherwise.

@Note - In blueprint depending on the event you use to start the import its possible to have a deadlock, use the async function if its what you are experimenting
- `bool ImportScene(FString ContentPath, const UInterchangeSourceData SourceData, FImportAssetParameters ImportAssetParameters)`  
  Call this to start a synchronous scene import process.
This process can import many different assets and their transforms (USceneComponent).

@Param ContentPath - The path where the imported assets will be created.
@Param SourceData - The source data input to translate. This object will be duplicated to allow thread-safe operations.
@param ImportAssetParameters - All parameters that need to be passed to the import asset function.
@return true if the import succeeds, or false otherwise.

@Note - In blueprint depending on the event you use to start the import its possible to have a deadlock, use the async function if its what you are experimenting
- `bool IsInterchangeActive()`  
  Return true if Interchange is actively importing or exporting, or false otherwise.
- `bool IsObjectBeingImported(UObject Object) const`  
  Return true if the object is being imported, or false otherwise. If the user imports multiple file in the same folder, it's possible to
have the same asset name in two different files.
- `bool ReimportAsset(UObject ObjectToReimport, FImportAssetParameters ImportAssetParameters, TArray<UObject>& OutImportedObjects)`  
  Call this to start a synchronous asset re-import process.
This process can re-import many different assets into the game content.

@Param ObjectToReimport - The object to re-import.
@param ImportAssetParameters - All parameters that need to be passed to the import asset function.
@return true if the import succeeds, or false otherwise.

@Note - The interchange manager will by default use the last file use to re-import the ObjectToReimport. If the file doesn't exist
        and the bAutomated flag is:
        - true, the function will return false and log a warning
        - false, a dialog will ask
@Note - In blueprint depending on the event you use to start the import its possible to have a deadlock, use the async function if its what you are experimenting
- `bool ScriptedImportAssetAsync(FString ContentPath, const UInterchangeSourceData SourceData, FImportAssetParameters ImportAssetParameters)`  
  Call this from blueprint or python to start an asynchronous asset import process.
This process can import many different assets into the game content.

@Param ContentPath - The path where the imported assets will be created.
@Param SourceData - The source data input to translate.
@param ImportAssetParameters - All parameters that need to be passed to the import asset function.
@return true if the import was started, or false otherwise.
- `bool ScriptedImportSceneAsync(FString ContentPath, const UInterchangeSourceData SourceData, FImportAssetParameters ImportAssetParameters)`  
  Call this to start a asynchronous scene import process.
This process can import many different assets and their transforms (USceneComponent).

@Param ContentPath - The path where the imported assets will be created.
@Param SourceData - The source data input to translate. This object will be duplicated to allow thread-safe operations.
@param ImportAssetParameters - All parameters that need to be passed to the import asset function.
@return true if the import was started, or false otherwise.
- `bool ScriptedReimportAssetAsync(UObject ObjectToReimport, FImportAssetParameters ImportAssetParameters)`  
  Call this from blueprint or python to start an asynchronous asset import process.
This process can import many different assets into the game content.

@Param ObjectToReimport - The object to re-import.
@param ImportAssetParameters - All parameters that need to be passed to the import asset function.
@return true if the import was started, or false otherwise.

@Note - The interchange manager will by default use the last file use to re-import the ObjectToReimport. If the file doesn't exist
        and the bAutomated flag is:
        - true, the function will return false and log a warning
        - false, a dialog will ask
@Note - If you need an event for when the import is done use the ImportAssetParameters events.
- `WaitUntilAllTasksDone(bool bCancel)`  
  Wait synchronously until all tasks are done.
- `bool WarnIfInterchangeIsActive()`  
  Return false if Interchange is not actively importing or exporting.
If Interchange is active, it will display a notification to let the user know they can cancel the asynchronous import/export
to be able to complete the operation they requested. (This is called by the exit editor operation.)

---

