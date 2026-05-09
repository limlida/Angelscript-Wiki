### UInterchangeFactoryBaseNode


This struct is used to store and retrieve key-value attributes. The attributes are stored in a generic FAttributeStorage that serializes the values in a TArray64<uint8>.
See UE::Interchange::EAttributeTypes to know the supported template types.
This is an abstract class. This is the base class of the Interchange node graph format; all classes in this format should derive from this class.

**方法**:

- `bool AddFactoryDependencyUid(FString DependencyUid)`  
  Add one dependency to this object.
- `bool GetCustomLevelUid(FString& AttributeValue) const`  
  If this node represent a scene asset (actor), return a specific level in which we will create this scene asset.
- `bool GetCustomReferenceObject(FSoftObjectPath& AttributeValue) const`  
  Return the custom ReferenceObject: the UObject this factory node has created.
- `bool GetCustomSubPath(FString& AttributeValue) const`  
  Return the custom sub-path under PackageBasePath where the assets will be created.
- `GetFactoryDependencies(TArray<FString>& OutDependencies) const`  
  Retrieve the dependencies for this object.
- `int GetFactoryDependenciesCount() const`  
  Retrieve the number of factory dependencies for this object.
- `GetFactoryDependency(int Index, FString& OutDependency) const`  
  Retrieve one dependency for this object.
- `UClass GetObjectClass() const`  
  Return the UClass of the object we represent, so we can find the factory/writer.
- `EReimportStrategyFlags GetReimportStrategyFlags() const`  
  Return the reimport strategy flags.
- `bool IsRuntimeImportAllowed() const`  
  Return if the import of the class is allowed at runtime.
- `bool RemoveFactoryDependencyUid(FString DependencyUid)`  
  Remove one dependency from this object.
- `bool SetCustomLevelUid(FString AttributeValue)`  
  If this node represent a scene asset (actor), you can set a specific level in which we will create this scene asset.
- `bool SetCustomReferenceObject(FSoftObjectPath AttributeValue)`  
  Set the custom ReferenceObject: the UObject this factory node has created.
- `bool SetCustomSubPath(FString AttributeValue)`  
  Set the custom sub-path under PackageBasePath where the assets will be created.
- `bool SetForceNodeReimport()`  
  Allow the creation of the Unreal object even if it has been previously deleted in the editor.
- `bool SetReimportStrategyFlags(EReimportStrategyFlags ReimportStrategyFlags)`  
  Change the reimport strategy flags.
- `bool SetSkipNodeImport()`  
  Add the skip node attribute. Use this function to cancel the creation of the Unreal asset. See ShouldSkipNodeImport for more documentation.
- `bool ShouldForceNodeReimport() const`  
  Return whether or not an object should be created even if it has been deleted in the editor.
Return false by default.
- `bool ShouldSkipNodeImport() const`  
  Return true if this node should skip the factory import process, or false otherwise.
Nodes can be in a situation where we have to skip the import process because we cannot import the associated asset for multiple reasons. For example:
- An asset can already exist and represents a different type (UClass).
- An asset can already exist and is being compiled.
- An asset can already exist and is being imported by another concurrent import task (such as a user importing multiple files at the same time in the same content folder).
- `bool UnsetForceNodeReimport()`  
  Disallow the creation of the Unreal object if it has been previously deleted in the editor.
- `bool UnsetSkipNodeImport()`  
  Remove the skip node attribute. See ShouldSkipNodeImport for more documentation.

---

