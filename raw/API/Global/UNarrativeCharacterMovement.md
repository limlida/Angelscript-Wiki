### UNarrativeCharacterMovement


Custom movement component for Narrative Pro.

**属性**:

- `float32 ClimbTraceJumpHorizontalDistance []`
- `float32 ClimbTraceJumpVerticalDistance []`
- `float32 CoverInterpSpeed [distance left or right of the player to check for cover]`
- `FCoverState CoverState [The state of our cover - where is it, and what type of cover it is.]`
- `UAnimMontage EnterDive []`
- `float32 EnterRagdollFallZImpactGroundThreshold [Start ragdolling if we impact walkable ground at fast than this Z.]`
- `float32 EnterRagdollFallZImpactSlopeThreshold [Start ragdolling if falling at faster than this many units of Z and we smash into an unwalkable slope]`
- `float32 EnterRagdollFallZThreshold [Start ragdolling if falling at faster than this many units of Z]`
- `UAnimMontage EnterWater []`
- `FRuntimeFloatCurve FallDamageCurve [Fall damage we'll take when landing given a certain Z velocity.]`
- `float32 FindCoverForwardSearchDist [How far forward we need to sweep a capsule to find some cover.]`
- `float32 LeanFromCoverDist [distance to lean us left/right out of the cover.]`
- `float32 NextCoverTraceDepth [distance left or right of the player to check for cover]`
- `float32 NextCoverTraceSpacing [TODO: rename this // distance left or right of the player to check for cover]`
- `FCoverEvent OnEnterCover`
- `FCoverEvent OnExitCover`
- `float32 OrientToMovementInterpSpeed [Interp speed for orienting towards movement]`
- `float32 PlayerOffsetFromCover [distance from cover for the player.]`
- `UAnimMontage RagdollGetUpFromBackMontage []`
- `UAnimMontage RagdollGetUpFromFrontMontage []`
- `float32 SlowWalkSpeed [Units per second we should travel at when walking]`
- `float32 SprintSpeed [Units per second we should travel at when sprinting]`
- `float32 StartFallingLedgeCheckCooldown []`
- `float32 TraversalTraceCapsuleHalfHeightScale [Scales the trace capsule half height as a factor of the character Capsule half height]`
- `float32 TraversalTraceCapsuleHalfHeightScaleFalling []`
- `float32 TraversalTraceForwardDistance []`
- `float32 TraversalTraceForwardDistanceClimbCheck []`
- `float32 TraversalTraceForwardDistanceFalling []`
- `float32 TraversalTraceForwardDistanceSwimming []`
- `float32 TraversalTraceHeightMax []`
- `float32 TraversalTraceHeightMin []`
- `bool bCanWalkAroundCornersInCover [If true, we'll try walk around corners in cover - otherwise, we'll stop the player at the corner]`
- `bool bCheckLedgeWhilstFalling []`
- `bool bOrientCrouchToCoverHeight [If true, we'll adjust crouching automatically depending on the height of the cover]`


**方法**:

- `CoverToPlayer(FVector& Location, FRotator& Rotation, bool bIncludeLeaning = true) const`
- `FVector2D GetLocalInputVector() const`
- `UNarrativeCharacterMovement GetMirrorMovement() const`
- `ANarrativeCharacter GetNarrativeCharacterOwner() const`
- `bool GetUseAccelerationForPaths() const`
- `bool HasCover() const`
- `InvalidateCover()`
- `bool IsClimbing() const`
- `bool IsCoverStrafingLeft() const`  
  Return whether we're strafing to the left or to the right
- `bool IsCoverValid(FHitResult Hit)`
- `bool IsCustomMovementMode(ENarrativeCustomMovementMode InCustomMovementMode) const`
- `bool IsMovementMode(EMovementMode InMovementMode) const`
- `bool IsMovingForward(float32 ForwardAngleTolerance = 10.000000) const`  
  Return true if we are moving forward - used by sprint ability
       @param ForwardAngleTolerance the angle degrees we can be off by and still be considered to be moving forwards
- `bool IsRagdoll() const`
- `bool IsSlowWalking() const`  
  Return true if we are slow walking
- `bool IsSprinting() const`  
  Return true if we are sprinting
- `bool SetCoverFromHit(FHitResult Hit)`
- `SetMirrorComponent(UNarrativeCharacterMovement MirrorCMC)`  
  Set our mirror component
- `SetUseAccelerationForPaths(bool bNewAccelerationForPaths)`  
  BP exposed way to turn off use acceleration for paths
- `StartSprinting()`  
  Request to start sprinting
- `StopSprinting()`  
  Request to stop sprinting
- `bool TryEnterCover()`  
  Try enter cover by tracing in the direction we are looking for cover.
- `bool TryFindAttachTransform(FAttachWarpProps& OutAttachWarpProps, bool PressedJump, FVector2D InputVector, float32 OptionalBlendInTime) const`  
  Trys to find an attach transform for an "attach warp" root motion montage
If successful the AttachWarpProps will be filled with all the data necessary for
CHT_AttachWarp to select the best montages

---

