### FPoseDriverTarget


Information about each target in the PoseDriver

**属性**:

- `TArray<FPoseDriverTransform> BoneTransforms [Translation of this target]`
- `FRichCurve CustomCurve [Custom curve mapping to apply if bApplyCustomCurve is true]`
- `ERBFDistanceMethod DistanceMethod [Override for the distance method to use for each target]`
- `FName DrivenName [Name of item to drive - depends on DriveOutput setting.
If DriveOutput is DrivePoses, this should be the name of a pose in the assigned PoseAsset
If DriveOutput is DriveCurves, this is the name of the curve (morph target, material param etc) to drive]`
- `ERBFFunctionType FunctionType [Override for the function method to use for each target]`
- `FRotator TargetRotation [Rotation of this target]`
- `float32 TargetScale [Scale applied to this target's function - a larger value will activate this target sooner]`
- `bool bApplyCustomCurve [If we should apply a custom curve mapping to how this target activates]`
- `bool bIsHidden [If we should hide this pose from the UI]`


**方法**:

- `FPoseDriverTarget& opAssign(FPoseDriverTarget Other)`

---

