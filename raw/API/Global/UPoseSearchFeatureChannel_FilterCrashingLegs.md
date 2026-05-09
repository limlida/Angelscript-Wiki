### UPoseSearchFeatureChannel_FilterCrashingLegs


the idea is to calculate the angle between the direction from LeftThigh position to RightThigh position and the direction from LeftFoot position to RightFoot position, and divide it by PI to have values in range [-1,1]
the number (called 'CrashingLegsValue' calculated in ComputeCrashingLegsValue) is gonna be
0 if the feet are aligned with the thighs (for example in an idle standing position)
0.5 if the right foot is exactly in front of the left foot (for example when a character is running  following a line)
-0.5 if the left foot is exactly in front of the right foot
close to 1 or -1 if the feet (and so the legs) are completely crossed
at runtime we'll match the CrashingLegsValue and also filter by discarding pose candidates that don't respect the 'AllowedTolerance' between query and database values (happening in IsFilterValid)

**属性**:

- `float32 AllowedTolerance [if AllowedTolerance is zero the filter is disabled]`
- `EInputQueryPose InputQueryPose []`
- `FBoneReference LeftFoot []`
- `FBoneReference LeftThigh []`
- `FBoneReference RightFoot []`
- `FBoneReference RightThigh []`
- `FName SampleRole []`
- `float32 Weight []`

---

