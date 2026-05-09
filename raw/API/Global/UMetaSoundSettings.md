### UMetaSoundSettings


**属性**:

- `FMetaSoundPageSettings DefaultPageSettings [Default page settings to be used in editor and if no other page settings are targeted or defined.]`
- `TArray<FDirectoryPath> DirectoriesToRegister [Directories to scan & automatically register MetaSound post initial asset scan on engine start-up.
May speed up subsequent calls to playback MetaSounds post asset scan but increases application load time.
See 'MetaSoundAssetSubsystem::RegisterAssetClassesInDirectories' to dynamically register or
'MetaSoundAssetSubsystem::UnregisterAssetClassesInDirectories' to unregister asset classes.]`
- `TArray<FMetaSoundPageSettings> PageSettings [Array of possible page settings that can be added to a MetaSound object. Order
defines default fallback logic whereby a higher index-ordered page
implemented in a MetaSound asset is higher priority (see 'Target Page').]`
- `TArray<FMetaSoundQualitySettings> QualitySettings [Array of possible quality settings for Metasounds to chose from]`
- `FName TargetPageName [Page Name to target when attempting to execute MetaSound. If target page is not implemented (or cooked in a runtime build)
for the active platform, uses order of cooked pages (see 'Page Settings' for order) falling back to lower index-ordered page
implemented in MetaSound asset. If no fallback is found, uses default implementation.]`
- `bool bAutoUpdateLogWarningOnDroppedConnection [If true, warnings will be logged if updating a node results in existing connections being discarded.]`

---

