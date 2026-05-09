### FAssetRegistryDependencyOptions


namespace UE::AssetRegistry

**属性**:

- `bool bIncludeEditorOnlyPackageReferences [Dependencies which are only needed in the editor.]`
- `bool bIncludeGamePackageReferences [Dependencies which are needed in the game as well as the editor.]`
- `bool bIncludeHardManagementReferences [Reference that says one object directly manages another object, set when Primary Assets manage things explicitly]`
- `bool bIncludeHardPackageReferences [Dependencies which are required for correct usage of the source asset, and must be loaded at the same time]`
- `bool bIncludeSearchableNames [References to specific SearchableNames inside a package]`
- `bool bIncludeSoftManagementReferences [Indirect management references, these are set through recursion for Primary Assets that manage packages or other primary assets]`
- `bool bIncludeSoftPackageReferences [Dependencies which don't need to be loaded for the object to be used (i.e. soft object paths)]`


**方法**:

- `FAssetRegistryDependencyOptions& opAssign(FAssetRegistryDependencyOptions Other)`

---

