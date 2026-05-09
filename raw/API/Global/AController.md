### AController


Controllers are non-physical actors that can possess a Pawn to control
its actions.  PlayerControllers are used by human players to control pawns, while
AIControllers implement the artificial intelligence for the pawns they control.
Controllers take control of a pawn using their Possess() method, and relinquish
control of the pawn by calling UnPossess().

Controllers receive notifications for many of the events occurring for the Pawn they
are controlling.  This gives the controller the opportunity to implement the behavior
in response to this event, intercepting the event and superseding the Pawn's default
behavior.

ControlRotation (accessed via GetControlRotation()), determines the viewing/aiming
direction of the controlled Pawn and is affected by input such as from a mouse or gamepad.

@see https://docs.unrealengine.com/latest/INT/Gameplay/Framework/Controller/

**属性**:

- `FInstigatedAnyDamageSignature OnInstigatedAnyDamage [Called when the controller has instigated damage in any way]`
- `FOnPossessedPawnChanged OnPossessedPawnChanged [Called on both authorities and clients when the possessed pawn changes (either OldPawn or NewPawn might be nullptr)]`
- `APlayerState PlayerState [PlayerState containing replicated information about the player using this controller (only exists for players, not NPCs).]`
- `bool bAttachToPawn [If true, the controller location will match the possessed Pawn's location. If false, it will not be updated. Rotation will match ControlRotation in either case.
Since a Controller's location is normally inaccessible, this is intended mainly for purposes of being able to attach
an Actor that follows the possessed Pawn location, but that still has the full aim rotation (since a Pawn might
update only some components of the rotation).]`


**方法**:

- `ClientSetLocation(FVector NewLocation, FRotator NewRotation)`  
  Replicated function to set the pawn location and rotation, allowing server to force (ex. teleports).
- `ClientSetRotation(FRotator NewRotation, bool bResetCamera)`  
  Replicated function to set the pawn rotation, allowing the server to force.
- `FRotator GetControlRotation() const`  
  Get the control rotation. This is the full aim rotation, which may be different than a camera orientation (for example in a third person view),
and may differ from the rotation of the controlled Pawn (which may choose not to visually pitch or roll, for example).
- `FRotator GetDesiredRotation() const`  
  Get the desired pawn target rotation
- `GetPlayerViewPoint(FVector& Location, FRotator& Rotation) const`  
  Returns Player's Point of View
For the AI this means the Pawn's 'Eyes' ViewPoint
For a Human player, this means the Camera's ViewPoint

@output      out_Location, view location of player
@output      out_rotation, view rotation of player
- `AActor GetViewTarget() const`  
  Get the actor the controller is looking at
- `bool IsLocalController() const`  
  Returns whether this Controller is a local controller.
- `bool IsLocalPlayerController() const`  
  Returns whether this Controller is a locally controlled PlayerController.
- `bool IsLookInputIgnored() const`  
  Returns true if look input is ignored.
- `bool IsMoveInputIgnored() const`  
  Returns true if movement input is ignored.
- `bool IsPlayerController() const`  
  Returns whether this Controller is a PlayerController.
- `APawn GetControlledPawn() const`  
  Return the Pawn that is currently 'controlled' by this PlayerController
- `bool LineOfSightTo(const AActor Other, FVector ViewPoint = FVector ( ), bool bAlternateChecks = false) const`  
  Checks line to center and top of other actor
@param Other is the actor whose visibility is being checked.
@param ViewPoint is eye position visibility is being checked from.  If vect(0,0,0) passed in, uses current viewtarget's eye position.
@param bAlternateChecks used only in AIController implementation
@return true if controller's pawn can see Other actor.
- `Possess(APawn InPawn)`  
  Handles attaching this controller to the specified pawn.
Only runs on the network authority (where HasAuthority() returns true).
Derived native classes can override OnPossess to filter the specified pawn.
When possessed pawn changed, blueprint class gets notified by ReceivePossess
and OnNewPawn delegate is broadcasted.
@param InPawn The Pawn to be possessed.
@see HasAuthority, OnPossess, ReceivePossess
- `InstigatedAnyDamage(float Damage, const UDamageType DamageType, AActor DamagedActor, AActor DamageCauser)`  
  Event when this controller instigates ANY damage
- `ReceivePossess(APawn PossessedPawn)`  
  Blueprint implementable event to react to the controller possessing a pawn
- `ReceiveUnPossess(APawn UnpossessedPawn)`  
  Blueprint implementable event to react to the controller unpossessing a pawn
- `ResetIgnoreInputFlags()`  
  Reset move and look input ignore flags.
- `ResetIgnoreLookInput()`  
  Stops ignoring look input by resetting the ignore look input state.
- `ResetIgnoreMoveInput()`  
  Stops ignoring move input by resetting the ignore move input state.
- `SetControlRotation(FRotator NewRotation)`  
  Set the control rotation.
- `SetIgnoreLookInput(bool bNewLookInput)`  
  Locks or unlocks look input, consecutive calls stack up and require the same amount of calls to undo, or can all be undone using ResetIgnoreLookInput.
@param bNewLookInput  If true, look input is ignored. If false, input is not ignored.
- `SetIgnoreMoveInput(bool bNewMoveInput)`  
  Locks or unlocks movement input, consecutive calls stack up and require the same amount of calls to undo, or can all be undone using ResetIgnoreMoveInput.
@param bNewMoveInput If true, move input is ignored. If false, input is not ignored.
- `SetInitialLocationAndRotation(FVector NewLocation, FRotator NewRotation)`  
  Set the initial location and rotation of the controller, as well as the control rotation. Typically used when the controller is first created.
- `StopMovement()`  
  Aborts the move the controller is currently performing
- `UnPossess()`  
  Called to unpossess our pawn for any reason that is not the pawn being destroyed (destruction handled by PawnDestroyed()).

---

