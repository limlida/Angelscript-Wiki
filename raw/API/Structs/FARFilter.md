### FARFilter


A struct to serve as a filter for Asset Registry queries.
Each component element is processed as an 'OR' operation while all the components are processed together as an 'AND' operation.
This type is mirrored in NoExportTypes.h

**属性**:

- `TArray<FTopLevelAssetPath> ClassPaths [The filter component for class path names. Instances of the specified classes, but not subclasses (by default), will be included. Derived classes will be included only if bRecursiveClasses is true.]`
- `TArray<FName> PackageNames [The filter component for package names]`
- `TArray<FName> PackagePaths [The filter component for package paths]`
- `TSet<FTopLevelAssetPath> RecursiveClassPathsExclusionSet [Only if bRecursiveClasses is true, the results will exclude classes (and subclasses) in this list]`
- `TArray<FSoftObjectPath> SoftObjectPaths [The filter component containing the paths of specific assets to match.
Matches against FAssetData::ToSoftObjectPath().
This is a top level asset path for most assets and a subobject path for assets such as world partition external actors.]`
- `bool bIncludeOnlyOnDiskAssets [If true, use only DiskGatheredData, do not calculate from UObjects. @see IAssetRegistry class header for
bIncludeOnlyOnDiskAssets.]`
- `bool bRecursiveClasses [If true, subclasses of ClassPaths will also be included and RecursiveClassPathsExclusionSet will be excluded.]`
- `bool bRecursivePaths [If true, PackagePath components will be recursive]`


**方法**:

- `GetBlueprintAssets(TArray<FAssetData>& OutAssetData) const`  
  Gets asset data for all blueprint assets that match the filter. ClassPaths in the filter specify the blueprint's parent class.
- `FARFilter& opAssign(FARFilter Other)`

---

