### APlayerState


A PlayerState is created for every player on a server (or in a standalone game).
PlayerStates are replicated to all clients, and contain network game relevant information about the player, such as playername, score, etc.

**属性**:

- `uint8 CompressedPing [Replicated compressed ping for this player (holds ping in msec divided by 4)]`
- `FOnPlayerStatePawnSet OnPawnSet [Broadcast whenever this player's possessed pawn is set]`
- `APawn PawnPrivate [The pawn that is controlled by by this player state.]`
- `int PlayerId [Unique net id number. Actual value varies based on current online subsystem, use it only as a guaranteed unique number per player.]`
- `float32 Score [Player's current score.]`
- `bool bIsABot [True if this PlayerState is associated with an AIController]`
- `bool bIsSpectator [Whether this player is currently a spectator]`
- `bool bShouldUpdateReplicatedPing [Whether or not this player's replicated CompressedPing value is updated automatically.
Since player states are always relevant by default, in cases where there are many players replicating,
replicating the ping value can cause additional unnecessary overhead on servers if the value isn't
needed on clients.]`


**方法**:

- `FUniqueNetIdRepl GetUniqueId() const`  
  Gets the online unique id for a player. If a player is logged in this will be consistent across all clients and servers.
- `uint8 GetCompressedPing() const`  
  Gets the literal value of the compressed Ping value (Ping = PingInMS / 4).
- `APawn GetPawn() const`  
  Return the pawn controlled by this Player State.
- `float32 GetPingInMilliseconds() const`  
  Returns the ping (in milliseconds)

Returns ExactPing if available (local players or when running on the server), and
the replicated CompressedPing (converted back to milliseconds) otherwise.

Note that replication of CompressedPing is controlled by bShouldUpdateReplicatedPing,
and if disabled then this will return 0 or a stale value on clients for player states
that aren't related to local players
- `APlayerController GetPlayerController() const`  
  Return the player controller that created this player state, or null for remote clients
- `int GetPlayerId() const`  
  Gets the literal value of PlayerId.
- `FString GetPlayerName() const`  
  returns current player name
- `float32 GetScore() const`  
  Gets the literal value of Score.
- `bool IsABot() const`  
  Gets the literal value of bIsABot.
- `bool IsOnlyASpectator() const`  
  Gets the literal value of bOnlySpectator.
- `bool IsSpectator() const`  
  Gets the literal value of bIsSpectator.
- `CopyProperties(APlayerState NewPlayerState)`  
  * Can be implemented in Blueprint Child to move more properties from old to new PlayerState when traveling to a new level
*
* @param NewPlayerState         New PlayerState, which we fill with the current properties
- `OverrideWith(APlayerState OldPlayerState)`  
  * Can be implemented in Blueprint Child to move more properties from old to new PlayerState when reconnecting
*
* @param OldPlayerState         Old PlayerState, which we use to fill the new one with

---

