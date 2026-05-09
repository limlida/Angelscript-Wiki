### UMetaSoundAssetSubsystem


**方法**:

- `bool FindAssetClassInfo(FTopLevelAssetPath InPath, FMetaSoundDocumentInfo& OutDocInfo, FMetaSoundClassInterfaceInfo& OutInterfaceInfo, bool bForceLoad = true) const`  
  Returns asset class info for the given MetaSound asset. Will attempt to get
info without loading the asset if its tag data is up-to-date, or if set to force load, will load
otherwise (synchronously and can be slow).  Returns true if asset is found, was MetaSound, and all data
was retrieved successfully, false if not.
- `RegisterAssetClassesInDirectories(TArray<FMetaSoundAssetDirectory> Directories)`
- `bool ReplaceReferencesInDirectory(TArray<FMetaSoundAssetDirectory> InDirectories, FMetasoundFrontendClassName OldClassName, FMetasoundFrontendClassName NewClassName, FMetasoundFrontendVersionNumber OldVersion, FMetasoundFrontendVersionNumber NewVersion)`  
  Replaces dependencies in a MetaSound with the given class name and version with another MetaSound with the given
class name and version.  Can be asset or code-defined.  It is up to the caller to validate the two classes have
matching interfaces (Swapping with classes of unmatched interfaces can leave MetaSound in non-executable state).
- `UnregisterAssetClassesInDirectories(TArray<FMetaSoundAssetDirectory> Directories)`

---

