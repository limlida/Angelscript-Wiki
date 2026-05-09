### AGameStateBase


GameStateBase is a class that manages the game's global state, and is spawned by GameModeBase.
It exists on both the client and the server and is fully replicated.

**属性**:

- `AGameModeBase AuthorityGameMode [Instance of the current game mode, exists only on the server. For non-authority clients, this will be NULL.]`
- `TSubclassOf<AGameModeBase> GameModeClass [Class of the server's game mode, assigned by GameModeBase.]`
- `TArray<TObjectPtr<APlayerState>> PlayerArray [Array of all PlayerStates, maintained on both server and clients (PlayerStates are always relevant)]`
- `float32 ServerWorldTimeSecondsUpdateFrequency [How often the server updates the replicated TimeSeconds from the world. Values mean "update every X seconds", so 0.5 means update every half second. Set to zero to disable periodic updates.]`
- `TSubclassOf<ASpectatorPawn> SpectatorClass [Class used by spectators, assigned by GameModeBase.]`


**方法**:

- `float32 GetPlayerRespawnDelay(AController Controller) const`  
  Returns how much time needs to be spent before a player can respawn
- `float32 GetPlayerStartTime(AController Controller) const`  
  Returns the time that should be used as when a player started
- `float GetServerWorldTimeSeconds() const`  
  Returns the simulated TimeSeconds on the server, will be synchronized on client and server
- `bool HasBegunPlay() const`  
  Returns true if the world has started play (called BeginPlay on actors)
- `bool HasMatchEnded() const`  
  Returns true if the match can be considered ended. Defaults to false.
- `bool HasMatchStarted() const`  
  Returns true if the world has started match (called MatchStarted callbacks)

---

