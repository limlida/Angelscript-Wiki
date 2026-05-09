### UEditorExperimentalSettings


Implements Editor settings for experimental features.

**属性**:

- `EConsoleForGamepadLabels ConsoleForGamepadLabels [Specify which console-specific nomenclature to use for gamepad label text]`
- `float32 HDREditorNITLevel [The brightness of the slate UI on HDR monitors]`
- `bool bAllowLateJoinInPIE [Enable late joining in PIE]`
- `bool bAllowPotentiallyUnsafePropertyEditing [Allows editing of potentially unsafe properties during PIE. Advanced use only - use with caution.]`
- `bool bBreakOnExceptions [Break on Exceptions allows you to trap Access Nones and other exceptional events in Blueprints.]`
- `bool bContextMenuChunkAssignments [Allows ChunkIDs to be assigned to assets to via the content browser context menu.]`
- `bool bDisableCookInEditor [Cooking in the editor is deprecated in 5.7; it has never been updated to support WorldPartition and we are
removing support for it entirely in a future release. bDisableCookInEditor should be set to true.]`
- `bool bEnableAsyncGroomBindingCompilation [Enable async groom binding compilation to improve import and map load time performance when compilation is required]`
- `bool bEnableAsyncSkinnedAssetCompilation [Enable async skinned asset compilation to improve import and map load time performance when compilation is required]`
- `bool bEnableAsyncSoundWaveCompilation [Enable async sound compilation to improve import and map load time performance when compilation is required]`
- `bool bEnableAsyncStaticMeshCompilation [Enable async static mesh compilation to improve import and map load time performance when compilation is required]`
- `bool bEnableAsyncTextureCompilation [Enable async texture compilation to improve PIE and map load time performance when compilation is required]`
- `bool bEnableLevelInstanceLandscapeEdit [Allows editing of landscapes inside an editing level instance.]`
- `bool bEnableLevelInstancePropertyOverrides []`
- `bool bEnableLongPathsSupport [Allows creation of assets with paths longer than 260 characters. Note that this also requires the Windows 10 Anniversary Update (1607), and support for long paths to be enabled through the group policy editor.]`
- `bool bEnableMultithreadedLightmapEncoding [Enable multithreaded lightmap encoding (decreases time taken to encode lightmaps)]`
- `bool bEnableMultithreadedShadowmapEncoding [Enable multithreaded shadow map encoding (decreases time taken to encode shadow maps)]`
- `bool bEnableProjectLauncherExtensions [Enables Extensions for the new Project Launcher]`
- `bool bEnableStandaloneHLOD []`
- `bool bEnableTranslationPicker [Allows usage of the Translation Picker]`
- `bool bEnableWorldPartitionActorFilters []`
- `bool bEnableWorldPartitionExternalDataLayers []`
- `bool bExampleLayersAndBlends [When creating new Material Layers and Material Layer Blends, set up example graphs.]`
- `bool bFacialAnimationImporter [Enable experimental bulk facial animation importer (found in Developer Tools menu, requires editor restart)]`
- `bool bHDREditor [Allows the editor to run on HDR monitors on Windows 10]`
- `bool bMobilePIEPreviewDeviceLaunch [Enable experimental PIE preview device launch]`
- `bool bProceduralFoliage [Allows usage of the procedural foliage system]`
- `bool bProjectCustomBuildTools [Shows the option to import a custom project launcher profile in the project packaging 'custom builds' section]`
- `bool bSharedCookedBuilds []`
- `bool bTextAssetFormatSupport [Enables in-editor support for text asset formats]`
- `bool bUseOpenCLForConvexHullDecomp [Whether to use OpenCL to accelerate convex hull decomposition (uses GPU to decrease time taken to decompose meshes, currently only available on Mac OS X)]`
- `bool bVirtualizedAssetRehydration [Enables in-editor support for rehydrating virtualized assets]`

---

