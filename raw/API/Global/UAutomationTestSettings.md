### UAutomationTestSettings


Implements the Editor's user settings.

**属性**:

- `TArray<FString> AssetsToOpen [Asset to test for open in automation process]`
- `FSoftObjectPath AutomationTestmap [The automation test map to be used for several of the automation tests.]`
- `FBlueprintEditorPromotionSettings BlueprintEditorPromotionTest [Blueprint editor promotion test settings]`
- `FBuildPromotionTestSettings BuildPromotionTest [Editor build promotion test settings]`
- `float32 DefaultInteractiveFramerate [Default value used for FWaitForInteractiveFrameRate. This is a framerate determine to be suitably "interactive", but may be
less than the target framerate of the game as this is used for evaluating time to PIE, load the editor etc]`
- `float32 DefaultInteractiveFramerateDuration [Default time in seconds that DefaultInteractiveFramerate must remain true in FWaitForInteractiveFrameRate]`
- `float32 DefaultInteractiveFramerateWaitTime [Default wait time in seconds for FWaitForInteractiveFrameRate. After this time a test will fail.]`
- `FIntPoint DefaultScreenshotResolution [The default resolution to take all automation screenshots at.]`
- `TArray<FEditorMapPerformanceTestDefinition> EditorPerformanceTestMaps [The map to be used for the editor performance capture tool.]`
- `TArray<FString> EditorTestModules [Modules to load that have editor tests]`
- `TArray<FString> EngineTestModules [Modules to load that have engine tests]`
- `TArray<FExternalToolDefinition> ExternalTools [External executables and scripts to run as part of automation.]`
- `TArray<FEditorImportExportTestDefinition> ImportExportTestDefinitions [Asset import / Export test settings]`
- `TArray<FLaunchOnTestSettings> LaunchOnSettings [The map and device type to be used for the editor Launch On With Map Iterations test.]`
- `TArray<FString> MapsToPIETest [Maps to PIE during the PIE test]`
- `FMaterialEditorPromotionSettings MaterialEditorPromotionTest [Material editor promotion test settings]`
- `float32 PIETestDuration [PIE test duration in seconds. Only applied if you do PIETest]`
- `FParticleEditorPromotionSettings ParticleEditorPromotionTest [Particle editor promotion test settings]`
- `TArray<FString> TestLevelFolders [Folders containing levels to exclude from automated tests]`
- `bool bUseAllProjectMapsToPlayInPIE [Use all Maps from project for PlayMapInPIE test]`

---

