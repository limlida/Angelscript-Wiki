### UFactory


Base class for all factories
An object responsible for creating and importing new objects.

**属性**:

- `UAssetImportTask AssetImportTask [Task for importing file via script interfaces]`
- `const UAutomatedAssetImportData AutomatedImportData [Data for how to import files via the automated command line importing interface]`
- `TSubclassOf<UObject> ContextClass [Class of the context object used to help create the object.]`
- `TArray<FString> Formats [List of formats supported by the factory. Each entry is of the form "ext;Description" where ext is the file extension.]`
- `TSubclassOf<UObject> SupportedClass [The class manufactured by this factory.]`
- `uint8 SupportedWorkflows [Which workflows are supported.]`
- `bool bCreateNew [The default value to return from CanCreateNew()]`
- `bool bEditAfterNew [true if the associated editor should be opened after creating a new object.]`
- `bool bEditorImport [true if the factory imports objects from files.]`
- `bool bText [true if the factory imports objects from text.]`


**方法**:

- `bool ScriptFactoryCanImport(FString Filename)`  
  Whether the specified file can be imported by this factory. (Implemented in script)

@return true if the file is supported, false otherwise.
- `bool ScriptFactoryCreateFile(UAssetImportTask InTask)`  
  Import object(s) using a task via script

@param InTask
@return True if script implements

---

