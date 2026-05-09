### UClimbableActor


**方法**:

- `bool AdjustInitialWarpProps(FAttachWarpProps& AttachWarpProps, FHitResult InitialClimableHit, ANarrativeCharacter Character, bool PressedJump, FVector2D InputVector, float OptionalBlendInTime) const`  
  Called when jump initially onto a climbable, allows climable to adjust props where the initial "Ledge" is. IE - if we hit a ladder, this can adjust ledge location to the closest rung on the ladder etc.
You can also return false to notify the climb function that it should abort.
- `FGameplayTag GetClimbOverrideTag() const`  
  Allows the climbable actor to override which override layer we apply when in the climb.
- `bool TryFindClimbTransform(FAttachWarpProps& AttachWarpProps, FAttachWarpProps OldProps, ANarrativeCharacter Character, bool PressedJump, FVector2D InputVector, float OptionalBlendInTime) const`  
  Allows handling an input from the CMC trying to move whilst in the climb.

---

