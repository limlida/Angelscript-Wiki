### FPBIKBoneSetting


**属性**:

- `FName Bone [The Bone that these settings will be applied to.]`
- `float32 MaxX [Range is 0 to 180 (Default is 0). Degrees of rotation in the positive X direction to allow when joint is in "Limited" mode.]`
- `float32 MaxY [Range is 0 to 180 (Default is 0). Degrees of rotation in the positive Y direction to allow when joint is in "Limited" mode.]`
- `float32 MaxZ [Range is 0 to 180 (Default is 0). Degrees of rotation in the positive Z direction to allow when joint is in "Limited" mode.]`
- `float32 MinX [Range is -180 to 0 (Default is 0). Degrees of rotation in the negative X direction to allow when joint is in "Limited" mode.]`
- `float32 MinY [Range is -180 to 0 (Default is 0). Degrees of rotation in the negative Y direction to allow when joint is in "Limited" mode.]`
- `float32 MinZ [Range is -180 to 0 (Default is 0). Degrees of rotation in the negative Z direction to allow when joint is in "Limited" mode.]`
- `float32 PositionStiffness [Range is 0 to 1 (Default is 0). At higher values, the bone will resist translational motion (forcing other bones to compensate).]`
- `FVector PreferredAngles [The local Euler angles (in degrees) used to rotate this bone when the chain it belongs to is squashed.
This happens by moving the effector at the tip of the chain towards the root of the chain.
This can be used to coerce knees and elbows to bend in the anatomically "correct" direction without resorting to limits (which may require more iterations to converge).]`
- `float32 RotationStiffness [Range is 0 to 1 (Default is 0). At higher values, the bone will resist rotating (forcing other bones to compensate).]`
- `EPBIKLimitType X [Limit the rotation angle of the bone on the X axis.
Free: can rotate freely in this axis.
Limited: rotation is clamped between the min/max angles relative to the Skeletal Mesh reference pose.
Locked: no rotation is allowed in this axis (will remain at reference pose angle).]`
- `EPBIKLimitType Y [Limit the rotation angle of the bone on the Y axis.
Free: can rotate freely in this axis.
Limited: rotation is clamped between the min/max angles relative to the Skeletal Mesh reference pose.
Locked: no rotation is allowed in this axis (will remain at input pose angle).]`
- `EPBIKLimitType Z [Limit the rotation angle of the bone on the Z axis.
Free: can rotate freely in this axis.
Limited: rotation is clamped between the min/max angles relative to the Skeletal Mesh reference pose.
Locked: no rotation is allowed in this axis (will remain at input pose angle).]`
- `bool bUsePreferredAngles [When true, this bone will "prefer" to rotate in the direction specified by the Preferred Angles when the chain it belongs to is compressed.
Preferred Angles should be the first method used to fix bones that bend in the wrong direction (rather than limits).
The resulting angles can be visualized on their own by temporarily setting the Solver iterations to 0 and moving the effectors.]`


**方法**:

- `FPBIKBoneSetting& opAssign(FPBIKBoneSetting Other)`

---

