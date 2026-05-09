### UGameInstance


GameInstance: high-level manager object for an instance of the running game.
Spawned at game creation and not destroyed until game instance is shut down.
Running as a standalone game, there will be one of these.
Running in PIE (play-in-editor) will generate one of these per PIE instance.

**属性**:

- `FOnUserInputDeviceConnectionChange OnInputDeviceConnectionChange [Callback for when an input device connection state has changed (a new gamepad was connected or disconnected)]`
- `FOnPawnControllerChanged OnPawnControllerChangedDelegates [gets triggered shortly after a pawn's controller is set. Most of the time
    it signals that the Controller has changed but in edge cases (like during
    replication) it might end up broadcasting the same pawn-controller pair
    more than once]`
- `FOnUserInputDevicePairingChange OnUserInputDevicePairingChange [Callback when an input device has changed pairings (the owning platform user has changed for that device)]`


**方法**:

- `ULocalPlayer CreateInitialPlayer(FString& OutError)`
- `ULocalPlayer CreateLocalPlayer(int ControllerId, FString& OutError, bool bSpawnPlayerController)`
- `ULocalPlayer CreateLocalPlayer(FPlatformUserId UserId, FString& OutError, bool bSpawnPlayerController)`
- `int AddLocalPlayer(ULocalPlayer NewPlayer, FPlatformUserId UserId)`
- `bool RemoveLocalPlayer(ULocalPlayer ExistingPlayer)`
- `int GetNumLocalPlayers() const`
- `ULocalPlayer GetLocalPlayerByIndex(int Index) const`
- `APlayerController GetFirstLocalPlayerController(const UWorld World = nullptr) const`
- `ULocalPlayer FindLocalPlayerFromControllerId(int ControllerId) const`
- `ULocalPlayer FindLocalPlayerFromUniqueNetId(FUniqueNetIdRepl UniqueNetId) const`
- `ULocalPlayer GetFirstGamePlayer() const`
- `HandleNetworkError(ENetworkFailure FailureType, bool bIsServer)`  
  Opportunity for blueprints to handle network errors.
- `HandleTravelError(ETravelFailure FailureType)`  
  Opportunity for blueprints to handle travel errors.
- `Init()`  
  Opportunity for blueprints to handle the game instance being initialized.
- `Shutdown()`  
  Opportunity for blueprints to handle the game instance being shutdown.

---

