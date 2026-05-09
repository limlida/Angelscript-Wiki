### ANarrativePlayerCharacter


Base class for a player controlled Narrative Character.

**属性**:

- `ANarrativePlayerController CachedController [Required to grab the NPCController even if its not current possessing us, say because we're in a vehicle]`
- `UInputMappingContext DefaultMappingContext [MappingContext]`
- `UInputAction MoveAction [Move Input Action]`
- `FVector2D MovementVector [The local input vector]`
- `UPlayerDefinition PlayerDefinition [The player definition for this character]`
- `bool bClientNotifiedVisualReady [Server uses this to set when client has informed its ready. For client this is if we've sent the notify RPC off.]`


**方法**:

- `ANarrativePlayerState GetNarrativePlayerState() const`  
  Returns the player state, checking previouscontroller in case we're controlling a vehicle or something.
- `ANarrativePlayerController GetPlayerController() const`  
  Returns the player controller, checking previouscontroller in case we're controlling a vehicle or something.
- `UPlayerDefinition GetPlayerDefinition() const`  
  Get the Player definition from the character
- `ServerClientVisualReady()`  
  Client tells server when it is ready for server to grant all items etc, as server needs PState replicated, ASC initialized, char visual ready, etc.
Currently this does not wait for SimulatedProxies, it only guarantees everything is ready on owning client/server.
- `bool ShouldCameraFollow3PHeadBoneLocation() const`  
  Return whether the camera should follow the head bone location

---

