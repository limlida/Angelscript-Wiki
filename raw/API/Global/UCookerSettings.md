### UCookerSettings


Various cooker settings.

**属性**:

- `EBlueprintComponentDataCookingMethod BlueprintComponentDataCookingMethod [Generate optimized component data to speed up Blueprint construction at runtime. This option can increase the overall Blueprint memory usage in a cooked build. Requires Event-Driven Loading (EDL), which is enabled by default.]`
- `EBlueprintPropertyGuidsCookingMethod BlueprintPropertyGuidsCookingMethod [Should we include the property GUIDs for a Blueprint class in a cooked build, so that SaveGame archives can redirect property names via the GUIDs?
@note This option can increase the overall Blueprint memory usage in a cooked build, but can avoid needing to add CoreRedirect data for Blueprint classes stored within SaveGame archives.]`
- `TArray<FString> ClassesExcludedOnDedicatedClient [List of class names to exclude when cooking for dedicated client]`
- `TArray<FString> ClassesExcludedOnDedicatedServer [List of class names to exclude when cooking for dedicated server]`
- `ECookProgressDisplayMode CookProgressDisplayMode [Controls log output of the cooker]`
- `ETextureFormatASTCCompressor DefaultASTCCompressor [which compressor to use for ASTC textures]`
- `int DefaultASTCQualityBySize [Quality of 0 means smallest (12x12 block size), 4 means best (4x4 block size)]`
- `int DefaultASTCQualityBySizeHQ [Quality of 0 means smallest (12x12 block size), 4 means best (4x4 block size)]`
- `int DefaultASTCQualityBySpeed [Quality of 0 means fastest, 3 means best quality]`
- `TArray<FString> ModulesExcludedOnDedicatedClient [List of module names to exclude when cooking for dedicated client]`
- `TArray<FString> ModulesExcludedOnDedicatedServer [List of module names to exclude when cooking for dedicated server]`
- `TArray<FString> VersionedIntRValues [List of r values that need to be versioned]`
- `bool bAllowASTCHDRProfile [whether to allow ASTC HDR profile using Arm encoder, the hdr format is only supported on some devices, e.g. Apple A13, Mali-G72, Adreno (TM) 660]`
- `bool bAllowCookedDataInEditorBuilds [If true, the editor will be able to open cooked assets (limited to a subset of supported asset types).]`
- `bool bCompileBlueprintsInDevelopmentMode [Whether or not to compile Blueprints in development mode when cooking.]`
- `bool bCookOnTheFlyForLaunchOn [Enable -cookonthefly for launch on]`
- `bool bEnableBuildDDCInBackground []`
- `bool bEnableCookOnTheSide []`
- `bool bIgnoreIniSettingsOutOfDateForIteration [Ignore ini changes when doing iterative cooking, either in editor or out of editor]`
- `bool bIgnoreScriptPackagesOutOfDateForIteration [Ignore native header file changes when doing iterative cooking, either in editor or out of editor]`
- `bool bIterativeCookingForFileCookContent [Enable -iterate when triggering from Platforms dropdown menu]`
- `bool bIterativeCookingForLaunchOn [Enable -iterate for launch on]`

---

