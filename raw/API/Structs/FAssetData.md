### FAssetData


A struct to hold important information about an assets found by the Asset Registry
This struct is transient and should never be serialized

**属性**:

- `FTopLevelAssetPath AssetClassPath [The path of the asset's class, e.g. /Script/Engine.StaticMesh]`
- `FName AssetName [The name of the asset without the package]`
- `FName PackageName [The name of the package in which the asset is found, this is the full long package name such as /Game/Path/Package]`
- `FName PackagePath [The path to the package in which the asset is found, this is /Game/Path with the Package stripped off]`


**方法**:

- `FSoftObjectPath GetSoftObjectPath() const`
- `FString GetObjectPathString() const`
- `bool IsInstanceOf(const UClass BaseClass, bool bResolveClass = false) const`
- `bool HasEditorOnlyData() const`  
  Returns true if the asset has its editor-only data
- `UClass FindAssetNativeClass() const`  
  Returns the first native class of the asset type that can be found.  Normally this is just the FAssetData::GetClass(),
however if the class is a blueprint generated class it may not be loaded.  In which case GetAncestorClassNames will
be used to find the first native super class.  This can be slow if temporary caching mode is not on.
- `UObject GetAsset() const`  
  Returns the asset UObject if it is loaded or loads the asset if it is unloaded then returns the result
- `UClass GetClass() const`
- `FString GetExportTextName() const`  
  Returns the name for the asset in the form: Class'ObjectPath'
- `FString GetFullName() const`  
  Returns the full name for the asset in the form: Class ObjectPath
- `bool GetTagValue(FName InTagName, FString& OutTagValue) const`  
  Gets the value associated with the given tag as a string
- `bool IsCooked() const`  
  Returns true if the asset is cooked
- `bool IsAssetLoaded() const`  
  Returns true if the asset is loaded
- `bool IsRedirector() const`  
  Returns true if the this asset is a redirector.
- `bool IsUAsset() const`  
  Returns true if this is the primary asset in a package, true for maps and assets but false for secondary objects like class redirectors
- `bool IsValid() const`  
  Checks to see if this AssetData refers to an asset or is NULL
- `FSoftObjectPath ToSoftObjectPath() const`  
  Convert to a SoftObjectPath for loading
- `FAssetData& opAssign(FAssetData Other)`

---

