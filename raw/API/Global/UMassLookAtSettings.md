### UMassLookAtSettings


Implements the settings for the MassLookAt module.

**属性**:

- `FVector DefaultTargetLocationOffset [Additional offset added to the target base location (i.e., TransformFragment).
This is used by default when no specific height information (i.e., LookAtTargetTrait initializer) is available.]`
- `float FixedOffsetFromTargetHeight [Optional fixed offset (in cm) added to the target height, if available, to adjust the final location to look at.
Negative value should be used to lower the target.
TargetHeightRatio is applied before FixedOffsetFromTargetHeight
@see TargetHeightRatio]`
- `FMassLookAtPriorityInfo Priorities []`
- `float TargetHeightRatio [Optional height modifier ratio applied to the target height, if available, to adjust the final location to look at.
Value of 0 represents the base location and a value of 1 the base location with the full target height offset.
TargetHeightRatio is applied before FixedOffsetFromTargetHeight
@see FixedOffsetFromTargetHeight]`

---

