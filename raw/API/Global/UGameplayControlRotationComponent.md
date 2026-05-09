### UGameplayControlRotationComponent


An example component that works with the GameplayCameraComponent to manage a player's
control rotation when the camera changes or moves in a way that was not initiated
by the player themselves.

**属性**:

- `EAutoReceiveInput AutoActivateForPlayer [If AutoActivate is set, auto-activates control rotation management for the given player.
This is equivalent to calling ActivateControlRotationManagement on BeginPlay.]`
- `float32 AxisActionAngularSpeedThreshold [The angular speed, in degrees per second, past which a change in the player input
will thaw a frozen control rotation.]`
- `float32 AxisActionMagnitudeThreshold [The player input magnitude under which the frozen control rotation is thawed.]`
- `TArray<TObjectPtr<UInputAction>> AxisActions [The axis input action(s) to read from.]`


**方法**:

- `ActivateControlRotationManagementForPlayerController(APlayerController PlayerController)`  
  Activates management of a player controller's control rotation. The component will set
the control rotation every frame based on the latest camera system update.
- `ActivateControlRotationManagementForPlayerIndex(int PlayerIndex)`  
  Activates management of a player controller's control rotation. The component will set
the control rotation every frame based on the latest camera system update.
- `DeactivateControlRotationManagement()`  
  Deactivates management of a player controller's control rotation.

---

