### UEditorLoadingSavingSettings


Implements the Level Editor's loading and saving settings.

**属性**:

- `TArray<FAutoReimportDirectoryConfig> AutoReimportDirectorySettings [Lists every directory to monitor for content changes. Can be virtual package paths (eg /Game/ or /MyPlugin/), or absolute paths on disk.
Paths should point to the locations of the source content files (e.g. *.fbx, *.png) you want to be eligible for auto-reimport.]`
- `float32 AutoReimportThreshold [Specifies an amount of time to wait before a specific file change is considered for auto reimport]`
- `int AutoSaveInteractionDelayInSeconds [The minimum number of seconds to wait after the last user interactions (with the editor) before auto-save can trigger]`
- `int AutoSaveMaxBackups [How many auto save files to keep around]`
- `EAutoSaveMethod AutoSaveMethod [What method should be used when performing an autosave?]`
- `int AutoSaveTimeMinutes [The time interval after which to auto save]`
- `int AutoSaveWarningInSeconds [The number of seconds warning before an autosave]`
- `ELoadLevelAtStartup LoadLevelAtStartup [Whether to load a default example map at startup]`
- `ERestoreOpenAssetTabsMethod RestoreOpenAssetTabsOnRestart [Whether to restore previously open assets at startup after a clean shutdown]`
- `FFilePath TextDiffToolPath [Specifies the file path to the tool to be used for diffing text files]`
- `bool bAutoCreateAssets [When enabled, newly added source content files will be automatically imported into new assets.]`
- `bool bAutoDeleteAssets [When enabled, deleting a source content file will automatically prompt the deletion of any related assets.]`
- `bool bAutoSaveContent [Whether to automatically save content packages during an autosave]`
- `bool bAutoSaveEnable [Whether to automatically save after a time interval]`
- `bool bAutoSaveMaps [Whether to automatically save maps during an autosave]`
- `bool bAutomaticallyCheckoutOnAssetModification [Whether to automatically checkout on asset modification]`
- `bool bDetectChangesOnStartup [When enabled, changes to monitored directories since UE was closed will be detected on restart.
(Not recommended when working in collaboration with others using revision control).]`
- `bool bDirtyMigratedBlueprints [Whether to mark blueprints dirty if they are automatically migrated during loads]`
- `bool bForceCompilationAtStartup [Force project compilation at startup]`
- `bool bMonitorContentDirectories [When enabled, changes to source content files inside the content directories will automatically be reflected in the content browser.
Note that source content files must reside in one of the monitored directories to be eligible for auto-reimport.
Advanced setup options are available below.]`
- `bool bPromptBeforeAutoImporting [Whether to prompt the user to import detected changes.]`
- `bool bPromptForCheckoutOnAssetModification [Whether to automatically prompt for SCC checkout on asset modification]`
- `bool bSCCAutoAddNewFiles [Auto add files to source control]`
- `bool bSCCUseGlobalSettings [Use global source control login settings, rather than per-project. Changing this will require you to login again]`

---

