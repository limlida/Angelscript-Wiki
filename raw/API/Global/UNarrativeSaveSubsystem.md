### UNarrativeSaveSubsystem


Excellent little subsystem for saving every actor in our world implementing INarrativeSavableActor, along with any INarrativeSavableComponents the actor has.
By default the actors transform will be remembered, along with any UPROPERTY(SaveGame) values on the actor/saved components itself.
Also contains logic for grabbing the arguments passed into our game mode's URL so that the main menu can nicely feed the save game to load and we can load it
before all actors in the world call BeginPlay().

Supports dynamically spawned actors, and will also handle saving and loading actors that are streamed/unstreamed via world partition. If you need to save an actor,
just give it the INarrativeSavableActor interface, and implement the Load function.

**属性**:

- `FString CurrentSaveName [The save name we're currently playing in, whether we've loaded it or just saved to this slot.]`
- `int CurrentSaveSlot [The save slot we're currently playing in, whether we've loaded it or just saved to this slot.]`
- `FOnSavePhaseChanged OnBeginLoad`
- `FOnSavePhaseChanged OnBeginSave`
- `FOnSavePhaseChanged OnFinishedLoad`
- `FOnSavePhaseChanged OnFinishedSave`
- `FOnStableActorSpawned OnStableActorDestroyed`
- `FOnStableActorSpawned OnStableActorSpawned`
- `bool bIsCurrentlyLoading [Whether or not we're currnetly loading data in.]`


**方法**:

- `bool DeleteSave(FString SaveName = "NarrativeSave", int Slot = 0)`  
  Deletes a saved game from disk. USE THIS WITH CAUTION. Return true if save file deleted, false if delete failed or file didn't exist.
- `bool DoesRecordExist(FGuid RecordGUID) const`  
  Check if a record exists with the given ID.
- `UNarrativeSave GetSaveObject() const`  
  Return our current save object if one exists
- `bool IsLoading() const`  
  Whether or not we have player data and we're just waiting to do a deferred load of it
- `bool IsNewGame() const`  
  Return true if we're a new game, ie we've started a new game and havent saved yet
- `bool IsSavingDisabled() const`  
  Whether or not to disable saving. Useful for certain times - perhaps you want to disable saving whilst we are in combat etc.
- `bool Load(FString SaveName = "NarrativeSave", int Slot = 0)`  
  Assuming a save file exists, this will load the save file in. Essentially this will update the state of any actors in the world implementing INarrativeSavableActor
and spawn in any missing actors in the save file that aren't in the world already. We will also check for any components implemeting INarrativeSavableComponent
and save their state too.
- `bool LoadSingleActor(AActor Actor)`  
  Update a single actor so its state matches that of the saved record for that actor.
- `AActor LookupActorByGUID(FGuid SearchGUID)`  
  Allows you to quickly lookup an actor reference using its save GUID. Useful for actor references - save the GUID to disk and look it up later.
- `bool RemoveSingleActor(AActor Actor)`  
  Remove a single actor from the save file
- `bool Save(FString SaveName = "NarrativeSave", int Slot = 0)`  
  Will write to the records to a save file, and actually commit the save file to disk also.
- `bool SaveSingleActor(AActor Actor)`  
  Update a single actor so its state matches that of the saved record for that actor.

      @param bDontRespawn tells the save system that this actor should not automatically be respawned by the save system, we need to do it manually.
- `SetSavingDisabled(bool bShoudldDisable)`  
  Whether or not to disable saving. Useful for certain times - perhaps you want to disable saving whilst we are in combat etc.

---

