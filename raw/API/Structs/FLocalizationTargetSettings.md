### FLocalizationTargetSettings


**属性**:

- `TArray<FFilePath> AdditionalManifestDependencies [Text present in these manifests will not be duplicated in this target.]`
- `FLocalizationCompilationSettings CompileSettings [Settings for compiling translations.]`
- `ELocalizationTargetConflictStatus ConflictStatus [Whether the target has outstanding conflicts that require resolution.]`
- `FLocalizationExportingSettings ExportSettings [Settings for exporting translations.]`
- `FGatherTextFromMetaDataConfiguration GatherFromMetaData [Parameters for defining what text is gathered from metadata and how.]`
- `FGatherTextFromPackagesConfiguration GatherFromPackages [Parameters for defining what text is gathered from packages and how.]`
- `FGatherTextFromTextFilesConfiguration GatherFromTextFiles [Parameters for defining what text is gathered from text files and how.]`
- `FLocalizationImportDialogueSettings ImportDialogueSettings [Settings for importing dialogue from WAV files.]`
- `FString Name [Unique name for the target.]`
- `int NativeCultureIndex [The index of the native language among the supported languages.]`
- `TArray<FString> RequiredModuleNames [The names of modules which must be loaded when gathering text. Use to gather from packages or metadata sourced from a module that isn't the primary game module.]`
- `TArray<FCultureStatistics> SupportedCulturesStatistics [Language for which the source text is being localized for.]`
- `TArray<FGuid> TargetDependencies [Text present in these targets will not be duplicated in this target.]`


**方法**:

- `FLocalizationTargetSettings& opAssign(FLocalizationTargetSettings Other)`

---

