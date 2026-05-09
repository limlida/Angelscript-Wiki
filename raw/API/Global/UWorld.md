### UWorld


The World is the top level object representing a map or a sandbox in which Actors and Components will exist and be rendered.

A World can be a single Persistent Level with an optional list of streaming levels that are loaded and unloaded via volumes and blueprint functions
or it can be a collection of levels organized with a World Composition.

In a standalone game, generally only a single World exists except during seamless area transitions when both a destination and current world exists.
In the editor many Worlds exist: The level being edited, each PIE instance, each editor tool which has an interactive rendered viewport, and many more.

**属性**:

- `ULineBatchComponent LineBatchers [Line Batchers. Persistent types don't get flushed every frame.]`
- `UThumbnailInfo ThumbnailInfo [Information for thumbnail rendering]`
- `EWorldType WorldType`


**方法**:

- `bool IsGameWorld() const`
- `bool IsEditorWorld() const`
- `bool IsPreviewWorld() const`
- `bool ServerTravel(FString FURL, bool bAbsolute, bool bShouldSkipGameNotify)`
- `ENetMode GetNetMode() const`
- `AGameStateBase GetGameState() const`
- `float GetTimeSeconds() const`
- `float GetUnpausedTimeSeconds() const`
- `float GetRealTimeSeconds() const`
- `float GetAudioTimeSeconds() const`
- `float32 GetDeltaSeconds() const`
- `bool IsStartingUp() const`
- `bool IsTearingDown() const`
- `SetGameInstance(UGameInstance NewGI)`
- `UGameInstance GetGameInstance() const`
- `ALevelScriptActor GetLevelScriptActor() const`
- `ULevel GetPersistentLevel() const`
- `UDataLayerManager GetDataLayerManager() const`  
  Returns the UDataLayerManager associated with this world.

@return UDataLayerManager object associated with this world
- `AWorldSettings GetWorldSettings()`  
  Returns the AWorldSettings actor associated with this world.

@return AWorldSettings actor associated with this world
- `TArray<ULevelStreaming> GetStreamingLevels() const`

---

