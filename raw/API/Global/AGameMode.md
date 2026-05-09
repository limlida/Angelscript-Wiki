### AGameMode


GameMode is a subclass of GameModeBase that behaves like a multiplayer match-based game.
It has default behavior for picking spawn points and match state.
If you want a simpler base, inherit from GameModeBase instead.

**属性**:

- `float32 InactivePlayerStateLifeSpan [Time a playerstate will stick around in an inactive state after a player logout]`
- `int MaxInactivePlayers [The maximum number of inactive players before we kick the oldest ones out]`
- `float32 MinRespawnDelay [Minimum time before player can respawn after dying.]`
- `int NumBots [number of non-human players (AI controlled but participating as a player).]`
- `int NumPlayers [Current number of human players.]`
- `int NumSpectators [Current number of spectators.]`
- `int NumTravellingPlayers [Number of players that are still traveling from a previous map]`
- `bool bDelayedStart [Whether the game should immediately start when the first player logs in. Affects the default behavior of ReadyToStartMatch]`


**方法**:

- `AbortMatch()`  
  Report that a match has failed due to unrecoverable error
- `EndMatch()`  
  Transition from InProgress to WaitingPostMatch. You can call this manually, will also get called if ReadyToEndMatch returns true
- `FName GetMatchState() const`  
  Returns the current match state, this is an accessor to protect the state machine flow
- `bool IsMatchInProgress() const`  
  Returns true if the match state is InProgress or other gameplay state
- `OnSetMatchState(FName NewState)`  
  Implementable event to respond to match state changes
- `bool ReadyToEndMatch()`  
  Returns true if ready to End Match. Games should override this
- `bool ReadyToStartMatch()`  
  Returns true if ready to Start Match. Games should override this
- `RestartGame()`  
  Restart the game, by default travel to the current map
- `Say(FString Msg)`  
  Exec command to broadcast a string to all players
- `StartMatch()`  
  Transition from WaitingToStart to InProgress. You can call this manually, will also get called if ReadyToStartMatch returns true

---

