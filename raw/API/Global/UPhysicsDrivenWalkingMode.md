### UPhysicsDrivenWalkingMode


WARNING - This class will be removed. Please use UChaosWalkingMode instead

PhysicsDrivenWalkingMode: Override base kinematic walking mode for physics based motion.

**属性**:

- `float32 FractionalDownwardVelocityToTarget [Controls how much downward velocity is applied to keep the character rooted to the ground when the character
is within MaxStepHeight of the ground surface.]`
- `float32 FractionalGroundReaction [Controls the reaction force applied to the ground in the ground plane when the character is moving
A value of 1 means that the full reaction force is applied
A value of 0 means the character only applies a normal force to the ground and no tangential force]`
- `float32 FractionalRadialForceLimitScaling [Scaling applied to the radial force limit to raise the limit to always allow the character to
reach the motion target/
A value of 1 means that the radial force limit will be increased as needed to match the force
required to achieve the motion target.
A value of 0 means no scaling will be applied.]`
- `float32 FrictionForceLimit [Maximum force the character can apply to hold in place while standing on an unwalkable incline]`
- `float32 GroundDamping [Damping factor to control the softness of the interaction between the character and the ground
Set to 0 for no damping and 1 for maximum damping]`
- `float32 MaxUnsupportedTimeBeforeFalling [Time limit for being unsupported before moving from a walking to a falling state.
This provides some grace period when walking off of an edge during which locomotion
and jumping are still possible even though the character has started falling under gravity]`
- `float32 QueryRadius [Radius used for ground queries]`
- `float32 RadialForceLimit [Maximum force the character can apply to reach the motion target]`
- `float32 SwingTorqueLimit [Maximum torque the character can apply to remain upright]`
- `TOptional<float32> TargetHeightOverride [Optional override target height for the character (the desired distance from the center of the capsule to the floor).
If left blank, the -Z offset of the owning character's skeletal mesh comp will be used automatically.]`
- `float32 TwistTorqueLimit [Maximum torque the character can apply to rotate in air about the vertical axis]`
- `bool bHandleVerticalLandingSeparately [This setting is relevant for pawns landing on sloped surfaces. When enabled, no sliding occurs
for vertical landing velocities. When disabled, the sliding is governed by the friction forces.]`

---

