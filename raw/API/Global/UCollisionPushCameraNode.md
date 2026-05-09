### UCollisionPushCameraNode


A node that pushes the camera towards a "safe position" when it is colliding with
the environment. By default, the "safe position" is the pivot of the camera (if any)
or the position of the player pawn.

**属性**:

- `ECollisionChannel CollisionChannel [Collision channel to use for the line trace.]`
- `FFloatCameraParameter CollisionSphereRadius [Radius of the sphere used for collision testing.]`
- `FVector3dCameraVariableReference CustomSafePosition [An optional camera variable to query for a safe position. If null, or if the variable
isn't set, fallback to the value defined by SafePosition.]`
- `FBooleanCameraVariableReference EnableCollision [An optional boolean camera variable that specifies whether collision should be enabled.
When enabled/disabled, the collision push amount will interpolate as per the PushInterpolator
and PullInterpolator.]`
- `UCameraValueInterpolator PullInterpolator [The interpolation to use when pulling the camera back to its ideal position.]`
- `UCameraValueInterpolator PushInterpolator [The interpolation to use when pushing the camera towards the safe position.]`
- `ECollisionSafePosition SafePosition [How to compute the safe position.]`
- `FVector3dCameraParameter SafePositionOffset [World-space offset from the target to the line trace's end.]`
- `ECollisionSafePositionOffsetSpace SafePositionOffsetSpace [What space the safe position offset should be in.]`
- `bool bRunAsyncCollision [Whether to run the collision asynchrnously.
This is better for performance, but results in collision handling being one frame late.]`

---

