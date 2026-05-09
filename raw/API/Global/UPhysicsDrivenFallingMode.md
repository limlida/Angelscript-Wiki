### UPhysicsDrivenFallingMode


WARNING - This class will be removed. Please use UChaosFallingMode instead

PhysicsDrivenFallingMode: Override base kinematic falling mode for physics based motion.

**属性**:

- `float32 QueryRadius [Radius used for ground queries]`
- `float32 SwingTorqueLimit [Maximum torque the character can apply to remain upright]`
- `TOptional<float32> TargetHeightOverride [Optional override target height for the character (the desired distance from the center of the capsule to the floor).
If left blank, the -Z offset of the owning character's skeletal mesh comp will be used automatically.]`
- `float32 TwistTorqueLimit [Maximum torque the character can apply to rotate in air about the vertical axis]`

---

