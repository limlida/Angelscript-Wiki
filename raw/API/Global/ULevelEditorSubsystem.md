### ULevelEditorSubsystem


ULevelEditorSubsystem
Subsystem for exposing Level Editor related functionality to scripts

**属性**:

- `FOnLevelEditorEditorCameraMoved OnEditorCameraMoved [Expose EditorCameraMoved to blueprints]`
- `FOnLevelEditorMapChanged OnMapChanged [Expose MapChanged to blueprints. Note: This executes too early for some editor scripting, consider using OnMapOpened if this doesn't work for you.]`
- `FOnLevelEditorMapOpened OnMapOpened [Expose MapOpened to blueprints]`
- `FOnLevelEditorPostSaveWorld OnPostSaveWorld [Expose PostSaveWorld to blueprints]`
- `FOnLevelEditorPreSaveWorld OnPreSaveWorld [Expose PreSaveWorld to blueprints]`


**方法**:

- `bool BuildLightMaps(ELightingBuildQuality Quality = ELightingBuildQuality :: Quality_Production, bool bWithReflectionCaptures = false)`  
  Build Light Maps and optionally the reflection captures.
@param       Quality One of the enum LightingBuildQuality value. Default is Quality_Production.
@param       bWithReflectionCaptures Build the related reflection captures after building the light maps.
@return      True if build was successful.
- `bool EditorGetGameView(FName ViewportConfigKey = NAME_None)`
- `EditorInvalidateViewports()`
- `EditorPlaySimulate()`
- `EditorRequestBeginPlay()`
- `EditorRequestEndPlay()`
- `EditorSetGameView(bool bGameView, FName ViewportConfigKey = NAME_None)`
- `EditorSetViewportRealtime(bool bInRealtime, FName ViewportConfigKey = NAME_None)`
- `EjectPilotLevelActor(FName ViewportConfigKey = NAME_None)`
- `FName GetActiveViewportConfigKey()`
- `bool GetAllowsCinematicControl(FName ViewportConfigKey = NAME_None)`
- `ULevel GetCurrentLevel()`  
  Get the current level used by the world editor.
@return       The current level
- `bool GetExactCameraView(FName ViewportConfigKey = NAME_None)`
- `AActor GetPilotLevelActor(FName ViewportConfigKey = NAME_None)`
- `UTypedElementSelectionSet GetSelectionSet()`  
  Get the selection set for the current world, you can use this to track
and create changes to the level editor's selection
- `TArray<FName> GetViewportConfigKeys()`
- `bool IsInPlayInEditor() const`
- `bool LoadLevel(FString AssetPath)`  
  Close the current Persistent Level (without saving it). Loads the specified level.
@param       AssetPath                               Asset Path of the level to be loaded.
             ie. /Game/MyFolder/MyAsset
@return      True if the operation succeeds.
- `bool NewLevel(FString AssetPath, bool bIsPartitionedWorld = false)`  
  Close the current Persistent Level (without saving it). Create a new blank Level and save it. Load the new created level.
@param       AssetPath               Asset Path of where the level will be saved.
             ie. /Game/MyFolder/MyAsset
@param   bIsPartitionedWorld If true, new map is partitioned.
@return      True if the operation succeeds.
- `bool NewLevelFromTemplate(FString AssetPath, FString TemplateAssetPath)`  
  Close the current Persistent Level (without saving it). Create a new Level base on another level and save it. Load the new created level.
@param       AssetPath                               Asset Path of where the level will be saved.
             ie. /Game/MyFolder/MyAsset
@param       TemplateAssetPath               Level to be used as Template.
             ie. /Game/MyFolder/MyAsset
@return      True if the operation succeeds.
- `PilotLevelActor(AActor ActorToPilot, FName ViewportConfigKey = NAME_None)`
- `bool SaveAllDirtyLevels()`  
  Saves all Level currently loaded by the World Editor.
@return      True if the operation succeeds.
- `bool SaveCurrentLevel()`  
  Saves the specified Level. Must already be saved at lease once to have a valid path.
@return      True if the operation succeeds.
- `SetAllowsCinematicControl(bool bAllow, FName ViewportConfigKey = NAME_None)`
- `bool SetCurrentLevelByName(FName LevelName)`  
  Set the current level used by the world editor.
If more than one level shares the same name, the first one encounter of that level name will be used.
@param       LevelName       The name of the Level the actor belongs to (same name as in the ContentBrowser).
@return      True if the operation succeeds.
- `SetExactCameraView(bool bExactCameraView, FName ViewportConfigKey = NAME_None)`

---

