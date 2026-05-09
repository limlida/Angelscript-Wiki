### UEditorPerProjectUserSettings


**属性**:

- `FDirectoryPath DataSourceFolder [Specify a project data source folder to store relative source file path to ease the re-import process]`
- `FString SimplygonServerIP [Server IP for the distributed Simplygon server]`
- `uint SimplygonSwarmDelay [Time between JSON net requests for Simplygon Swarm]`
- `FString SwarmIntermediateFolder [Folder in which Simplygon Swarm will store intermediate texture and mesh data that is uploaded to the Swarm]`
- `uint SwarmMaxUploadChunkSizeInMB []`
- `uint SwarmNumOfConcurrentJobs [Number of concurrent swarm jobs to execute. This is independent of the main job queue.]`
- `bool bAlwaysBuildUAT [Always build UAT\UBT before launching the game. It will decrease iteration times if disabled]`
- `bool bAlwaysGatherBehaviorTreeDebuggerData [If enabled, behavior tree debugger will collect its data even when all behavior tree editor windows are closed]`
- `bool bAnimationReimportWarnings [If enabled, will compare an animation's sequence length and curves against the old data and inform the user if something changed]`
- `bool bAutomaticallyHotReloadNewClasses [If enabled, any newly added classes will be automatically compiled and trigger a hot-reload of the module they were added to]`
- `bool bConfirmEditorClose [If enabled, you'll be asked to confirm if you really want to close the editor.]`
- `bool bDisplayBlackboardKeysInAlphabeticalOrder [If enabled, blackboard keys displayed in blackboard editor and key selector will be sorted in alphabetical order .]`
- `bool bDisplayDocumentationLink [If enabled, tooltips linked to documentation will show the developer the link bound to that UI item]`
- `bool bDisplayEngineVersionInBadge [When enabled, Engine Version Number is displayed in the ProjectBadge]`
- `bool bDisplayUIExtensionPoints [If enabled, any newly opened UI menus, menu bars, and toolbars will show the developer hooks that would accept extensions]`
- `bool bEnableSwarmDebugging [Enable swarm debugging features. Temp ssf files are not removed. Detailed message printing]`
- `bool bGetAttentionOnUATCompletion [If enabled, the Editor will attempt to get the users attention whenever a UAT task (such as cooking or packaging) is completed]`
- `bool bKeepAttachHierarchy [If enabled, export level with attachment hierarchy set]`
- `bool bKeepFbxNamespace [If enabled, the fbx parser will keep the fbx namespaces, otherwise the namespace will be append to fbx node.]`
- `bool bShowCompilerLogOnCompileError [If enabled, the compile message log window will open if there is a compiler error on Hot Reload]`
- `bool bShowImportDialogAtReimport [If enabled, the fbx option dialog will show when user re-import a fbx]`
- `bool bUseSimplygonSwarm [When enabled, use SimplygonSwarm Module / server to create proxies]`

---

