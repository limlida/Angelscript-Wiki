### ADebugCameraController


Camera controller that allows you to fly around a level mostly unrestricted by normal movement rules.

To turn it on, please press Alt+C or both (left and right) analogs on XBox pad,
or use the "ToggleDebugCamera" console command. Check the debug camera bindings
in DefaultPawn.cpp for the camera controls.

**属性**:

- `float32 InitialAccel [Initial acceleration of the spectator pawn when we start possession.]`
- `float32 InitialDecel [Initial deceleration of the spectator pawn when we start possession.]`
- `float32 InitialMaxSpeed [Initial max speed of the spectator pawn when we start possession.]`
- `float32 SpeedScale [Allows control over the speed of the spectator pawn. This scales the speed based on the InitialMaxSpeed. Use Set Pawn Movement Speed Scale during runtime]`


**方法**:

- `AActor GetSelectedActor() const`  
  Returns the currently selected actor, or null if it is invalid or not set
- `OnActivate(APlayerController OriginalPC)`  
  Function called on activation of debug camera controller.
@param OriginalPC The active player controller before this debug camera controller was possessed by the player.
- `OnActorSelected(AActor NewSelectedActor, FVector SelectHitLocation, FVector SelectHitNormal, FHitResult Hit)`  
  Called when an actor has been selected with the primary key (e.g. left mouse button).

The selection trace starts from the center of the debug camera's view.

@param SelectHitLocation The exact world-space location where the selection trace hit the New Selected Actor.
@param SelectHitNormal The world-space surface normal of the New Selected Actor at the hit location.
- `OnDeactivate(APlayerController RestoredPC)`  
  Function called on deactivation of debug camera controller.
@param RestoredPC The Player Controller that the player input is being returned to.
- `SetPawnMovementSpeedScale(float32 NewSpeedScale)`  
  Sets the pawn movement speed scale.
- `ToggleDisplay()`  
  Toggles the display of debug info and input commands for the Debug Camera.

---

