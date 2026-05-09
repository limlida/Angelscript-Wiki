### ULocalPlayerSaveGame


Abstract subclass of USaveGame that provides utility functions that let you associate a Save Game object with a specific local player.
These objects can also be loaded using the functions on GameplayStatics, but you would need to call functions like InitializeSaveGame manually.
For simple games, it is fine to blueprint this class directly and add parameters and override functions in blueprint,
but for complicated games you will want to subclass this in native code and set up proper versioning.

**方法**:

- `bool AsyncSaveGameToSlotForLocalPlayer()`  
  Asynchronously save to the slot and user index.
This will return true if the save was requested, and errors should be handled by the HandlePostSave function after the save succeeds or fails
- `int GetInvalidDataVersion() const`  
  Returns the invalid save data version, which means it has never been saved/loaded
- `int GetLatestDataVersion() const`  
  Returns the latest save data version, this is used when the new data is saved
- `APlayerController GetLocalPlayerController() const`  
  Returns the local player controller this is associated with, this will be valid if it is ready to save
- `FPlatformUserId GetPlatformUserId() const`  
  Returns the platform user to save to, based on Local Player by default
- `int GetPlatformUserIndex() const`  
  Returns the user index to save to, based on Local Player by default
- `int GetSavedDataVersion() const`  
  Returns the game-specific version number this was last saved/loaded as
- `FString GetSaveSlotName() const`  
  Returns the save slot name to use
- `bool IsSaveInProgress() const`  
  Returns true if a save is in progress
- `OnPostLoad()`  
  Blueprint event called after loading, is not called for newly created saves
- `OnPostSave(bool bSuccess)`  
  Blueprint event called after saving finishes with success/failure result
- `OnPreSave()`  
  Blueprint event called before saving, do any game-specific fixup here
- `OnResetToDefault()`  
  Blueprint event called to reset all saved data to default, called when the load fails or manually
- `ResetToDefault()`  
  Resets all saved data to default values, called when the load fails or manually
- `bool SaveGameToSlotForLocalPlayer()`  
  Synchronously save using the slot and user index, stalling the main thread until it completes.
This will return true if the save was requested, and errors should be handled by the HandlePostSave function that will be called immediately.
- `bool WasLastSaveSuccessful() const`  
  Returns true if it has been saved at least once and the last save was successful
- `bool WasLoaded() const`  
  Returns true if this was loaded from an existing save
- `bool WasSaveRequested() const`  
  Returns true if a save was ever requested, may still be in progress

---

