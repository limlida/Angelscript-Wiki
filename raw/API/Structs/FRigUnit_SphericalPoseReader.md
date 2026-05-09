### FRigUnit_SphericalPoseReader


* Outputs a float value between 0-1 based off of the driver item's rotation in a specified region.

**属性**:

- `FRegionScaleFactors ActiveRegionScaleFactors [The directional scaling parameters for the active region (green).]`
- `float32 ActiveRegionSize [The size of the active region (green) that outputs the full value (1.0). Range is 0-1. Default is 0.1.]`
- `FSphericalPoseReaderDebugSettings Debug`
- `FVector DriverAxis [The axis of the driver transform that is compared against the falloff regions. Typically the axis that is pointing at the child; usually X by convention. Default is X-axis (1,0,0).]`
- `FRigElementKey DriverItem [The bone that will drive the output parameter when rotated into the active regions of this pose reader.]`
- `FRigVMExecutePin ExecutePin [* This property is used to chain multiple mutable units together]`
- `FRegionScaleFactors FalloffRegionScaleFactors [The directional scaling parameters for the falloff region (yellow).]`
- `float32 FalloffSize [The size of the falloff region (yellow) that defines the start of the output range. A value of 1 wraps the entire sphere with falloff. Range is 0-1. Default is 0.2.]`
- `bool FlipHeightScaling [Flip the positive / negative directions of the height scale factors.]`
- `bool FlipWidthScaling [Flip the positive / negative directions of the width scale factors.]`
- `FRigElementKey OptionalParentItem [An optional parent to use as a stable frame of reference for the active regions (defaults to DriverItem's parent if unset).]`
- `float32 OutputParam [The normalized output parameter; ranges from 0 (when outside yellow region) to 1 (in the green region) and smoothly blends from 0-1 in the yellow region.]`
- `FVector RotationOffset [Rotate the entire falloff region to align with the desired area of effect.]`


**方法**:

- `FRigUnit_SphericalPoseReader& opAssign(FRigUnit_SphericalPoseReader Other)`

---

