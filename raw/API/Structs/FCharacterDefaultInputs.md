### FCharacterDefaultInputs


Data block containing all inputs that need to be authored and consumed for the default Mover character simulation

**属性**:

- `FRotator ControlRotation [World space orientation that the controls were based on. This is commonly a player's camera rotation.]`
- `FVector MoveInput [Representing the directional move input for this frame. Must be interpreted according to MoveInputType. Relative to MovementBase if set, world space otherwise. Will be truncated to match network serialization precision.
Note: Use SetDirectionalInput or SetVelocityInput to set MoveInput and MoveInputType]`
- `EMoveInputType MoveInputType []`
- `UPrimitiveComponent MovementBase [Optional: when moving on a base, input may be relative to this object]`
- `FName MovementBaseBoneName [Optional: for movement bases that are skeletal meshes, this is the bone we're based on. Only valid if MovementBase is set.]`
- `FVector OrientationIntent [Facing direction intent, as a normalized forward-facing direction. A zero vector indicates no intent to change facing direction. Relative to MovementBase if set, world space otherwise.]`
- `FName SuggestedMovementMode [Used to force the Mover actor into a different movement mode]`
- `bool bIsJumpJustPressed []`
- `bool bIsJumpPressed []`
- `bool bUsingMovementBase [Specifies whether we are using a movement base, which will affect how move inputs are interpreted]`


**方法**:

- `FCharacterDefaultInputs& opAssign(FCharacterDefaultInputs Other)`

---

