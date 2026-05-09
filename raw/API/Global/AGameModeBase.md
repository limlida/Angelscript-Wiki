### AGameModeBase


The GameModeBase defines the game being played. It governs the game rules, scoring, what actors
are allowed to exist in this game type, and who may enter the game.

It is only instanced on the server and will never exist on the client.

A GameModeBase actor is instantiated when the level is initialized for gameplay in
C++ UGameEngine::LoadMap().

The class of this GameMode actor is determined by (in order) either the URL ?game=xxx,
the GameMode Override value set in the World Settings, or the DefaultGameMode entry set
in the game's Project Settings.

@see https://docs.unrealengine.com/latest/INT/Gameplay/Framework/GameMode/index.html

**属性**:

- `TSubclassOf<APawn> DefaultPawnClass [The default pawn class used by players.]`
- `FText DefaultPlayerName [The default player name assigned to players that join with no name specified.]`
- `EReplicationSystem GameNetDriverReplicationSystem [Can be used to request a specific replication system for a GameNetDriver that will replicate this game mode.
Leave to Default to use the game engine's preferred system.
Useful when migrating from one repsystem to another and a game mode does not fully support both repsystem yet.]`
- `TSubclassOf<AGameSession> GameSessionClass [Class of GameSession, which handles login approval and online game interface]`
- `TSubclassOf<AGameStateBase> GameStateClass [Class of GameState associated with this GameMode.]`
- `TSubclassOf<AHUD> HUDClass [HUD class this game uses.]`
- `FString OptionsString [Save options string and parse it when needed]`
- `TSubclassOf<APlayerController> PlayerControllerClass [The class of PlayerController to spawn for players logging in.]`
- `TSubclassOf<APlayerState> PlayerStateClass [A PlayerState of this class will be associated with every player to replicate relevant player information to all clients.]`
- `TSubclassOf<APlayerController> ReplaySpectatorPlayerControllerClass [The PlayerController class used when spectating a network replay.]`
- `TSubclassOf<AServerStatReplicator> ServerStatReplicatorClass`
- `TSubclassOf<ASpectatorPawn> SpectatorClass [The pawn class used by the PlayerController for players when spectating.]`
- `bool bPauseable [Whether the game is pauseable.]`
- `bool bStartPlayersAsSpectators [Whether players should immediately spawn when logging in, or stay as spectators until they manually spawn]`
- `bool bUseSeamlessTravel [Whether the game perform map travels using SeamlessTravel() which loads in the background and doesn't disconnect clients]`


**方法**:

- `bool CanSpectate(APlayerController Viewer, APlayerState ViewTarget)`  
  Return whether Viewer is allowed to spectate from the point of view of ViewTarget.
- `ChangeName(AController Controller, FString NewName, bool bNameChange)`  
  Sets the name for a controller
@param Controller    The controller of the player to change the name of
@param NewName               The name to set the player to
@param bNameChange   Whether the name is changing or if this is the first time it has been set
- `AActor ChoosePlayerStart(AController Player)`  
  Return the 'best' player start for this player to spawn from
Default implementation looks for a random unoccupied spot

@param Player is the controller for whom we are choosing a playerstart
@returns AActor chosen as player start (usually a PlayerStart)
- `AActor FindPlayerStart(AController Player, FString IncomingName)`  
  Return the specific player start actor that should be used for the next spawn
This will either use a previously saved startactor, or calls ChoosePlayerStart

@param Player The AController for whom we are choosing a Player Start
@param IncomingName Specifies the tag of a Player Start to use
@returns Actor chosen as player start (usually a PlayerStart)
- `UClass GetDefaultPawnClassForController(AController InController)`  
  Returns default pawn class for given controller
- `int GetNumPlayers()`  
  Returns number of active human players, excluding spectators
- `int GetNumSpectators()`  
  Returns number of human players currently spectating
- `HandleStartingNewPlayer(APlayerController NewPlayer)`  
  Signals that a player is ready to enter the game, which may start it up
- `bool HasMatchEnded() const`  
  Returns true if the match can be considered ended
- `bool HasMatchStarted() const`  
  Returns true if the match start callbacks have been called
- `InitializeHUDForPlayer(APlayerController NewPlayer)`  
  Initialize the AHUD object for a player. Games can override this to do something different
- `InitStartSpot(AActor StartSpot, AController NewPlayer)`  
  Called from RestartPlayerAtPlayerStart, can be used to initialize the start spawn actor
- `AActor K2_FindPlayerStart(AController Player, FString IncomingName = "")`  
  Return the specific player start actor that should be used for the next spawn
This will either use a previously saved startactor, or calls ChoosePlayerStart

@param Player The AController for whom we are choosing a Player Start
@param IncomingName Specifies the tag of a Player Start to use
@returns Actor chosen as player start (usually a PlayerStart)
- `OnChangeName(AController Other, FString NewName, bool bNameChange)`  
  Overridable event for GameMode blueprint to respond to a change name call
@param Controller    The controller of the player to change the name of
@param NewName               The name to set the player to
@param bNameChange   Whether the name is changing or if this is the first time it has been set
- `OnLogout(AController ExitingController)`  
  Implementable event when a Controller with a PlayerState leaves the game.
- `OnRestartPlayer(AController NewPlayer)`  
  Implementable event called at the end of RestartPlayer
- `OnSwapPlayerControllers(APlayerController OldPC, APlayerController NewPC)`  
  Called when a PlayerController is swapped to a new one during seamless travel
- `OnPostLogin(APlayerController NewPlayer)`  
  Notification that a player has successfully logged in, and has been given a player controller
- `bool MustSpectate(APlayerController NewPlayerController) const`  
  Returns true if NewPlayerController may only join the server as a spectator.
- `bool PlayerCanRestart(APlayerController Player)`  
  Returns true if it's valid to call RestartPlayer. By default will call Player->CanRestartPlayer
- `ResetLevel()`  
  Overridable function called when resetting level. This is used to reset the game state while staying in the same map
Default implementation calls Reset() on all actors except GameMode and Controllers
- `RestartPlayer(AController NewPlayer)`  
  Tries to spawn the player's pawn, at the location returned by FindPlayerStart
- `RestartPlayerAtPlayerStart(AController NewPlayer, AActor StartSpot)`  
  Tries to spawn the player's pawn at the specified actor's location
- `RestartPlayerAtTransform(AController NewPlayer, FTransform SpawnTransform)`  
  Tries to spawn the player's pawn at a specific location
- `ReturnToMainMenuHost()`  
  Return to main menu, and disconnect any players
- `bool ShouldReset(AActor ActorToReset)`  
  Overridable function to determine whether an Actor should have Reset called when the game has Reset called on it.
Default implementation returns true
@param ActorToReset The actor to make a determination for
@return true if ActorToReset should have Reset() called on it while restarting the game,
                false if the GameMode will manually reset it or if the actor does not need to be reset
- `APawn SpawnDefaultPawnAtTransform(AController NewPlayer, FTransform SpawnTransform)`  
  Called during RestartPlayer to actually spawn the player's pawn, when using a transform
@param       NewPlayer - Controller for whom this pawn is spawned
@param       SpawnTransform - Transform at which to spawn pawn
@return      a pawn of the default pawn class
- `APawn SpawnDefaultPawnFor(AController NewPlayer, AActor StartSpot)`  
  Called during RestartPlayer to actually spawn the player's pawn, when using a start spot
@param       NewPlayer - Controller for whom this pawn is spawned
@param       StartSpot - Actor at which to spawn pawn
@return      a pawn of the default pawn class
- `StartPlay()`  
  Transitions to calls BeginPlay on actors.

---

