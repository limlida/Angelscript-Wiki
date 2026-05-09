### USmoothWalkingModeBase


A walking mode that provides a simplified version of the default walking mode model with additional options for smoothing.

**属性**:

- `float32 Acceleration [Base acceleration to apply when the desired velocity magnitude is greater than the current velocity.]`
- `float32 AccelerationDeadzoneThreshold [Controls the point at which the acceleration will "snap" to zero when the desired velocity is reached]`
- `float32 AccelerationSmoothingCompensation [When the velocity is smoothed it will naturally lag behind the unsmoothed target. This factor controls how much this is compensated for by
tracking a future target that is the appropriate amount of time in the future when accelerating. Setting this to 0 will produce smoother, more
S-shaped velocity profiles but may reduce the feeling of responsiveness. Setting this to 1 increases the feeling of responsiveness but makes
the initial change in velocity less smooth and reduces the effective "lead-in".]`
- `float32 AccelerationSmoothingTime [Controls how much smoothing is applied to the velocity changes of the movement when accelerating. Set to zero to apply no smoothing.]`
- `float32 AngularVelocityDeadzoneThreshold [Controls the point at which the angular velocity will "snap" to zero when the desired facing is reached]`
- `float32 Deceleration [Base deceleration to apply when the desired velocity magnitude is less than the current velocity]`
- `float32 DecelerationSmoothingCompensation [This parameter acts the same as AccelerationSmoothingCompensation but is applied during deceleration instead]`
- `float32 DecelerationSmoothingTime [Controls how much smoothing is applied to the velocity changes of the movement when decelerating. Set to zero to apply no smoothing.]`
- `float32 DirectionalAccelerationFactor [Value between 0 and 1 that controls how the acceleration is applied. When set to 1 this will effectively add the acceleration in the direction
of the desired velocity on top of the current velocity then clip the result. This emulates the behavior of the default walking mode. When set
to 0 it will apply an acceleration which changes the current velocity directly towards the desired velocity. This makes directional changes in
velocity faster and more regular, always using a fixed acceleration, but can cause the overall velocity magnitude to dip during turning.]`
- `float32 FacingDeadzoneThreshold [Controls the point at which the facing will "snap" to the desired facing once it is close enough]`
- `float32 FacingSmoothingTime [Controls how much smoothing is applied to the facing direction. Set to zero to apply no smoothing.]`
- `float32 MaxSpeedOverride [If this value is greater or equal to 0, this will override the max speed read from the common legacy shared walk settings]`
- `float32 OutsideInfluenceSmoothingTime [Controls how quickly the built-up internal velocity will be modified when the character's movement is influenced by the outside factors such
as collisions. Setting this to a small value will mean that collisions and other outside influences on the character's velocity "reset"
the built-up internal velocity quickly. Larger values will mean that the character loses less momentum and takes less time to re-accumulate
internal velocity in situations such as glancing collisions and other short external impulses such as pushes.]`
- `float32 TurningStrength [Applies an additional force that rotates the velocity to make it face the desired direction of travel. This allows quick turns which don't
lose speed but adds additional acceleration to the system. Valid values range roughly between 0 and 100, where 10 would be considered already
quite a strong turning force and 100 will produce near instant turns (before smoothing).]`
- `float32 VelocityDeadzoneThreshold [Controls the point at which the velocity will "snap" to the desired velocity once it is close enough]`
- `bool bSmoothFacingWithDoubleSpring [Smooths facing using a double spring rather than a single spring. This produces a more S-shaped profile with a shorter "lead-out".]`


**方法**:

- `GenerateWalkMove(FMoverTickStartData& StartState, float DeltaSeconds, FVector DesiredVelocity, FQuat DesiredFacing, FQuat CurrentFacing, FVector& InOutAngularVelocityDegrees, FVector& InOutVelocity)`  
  Override this to make a simple walking mode

---

