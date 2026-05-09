### UIKRetargetRootMotionController


The blueprint/python API for editing a Root Motion Op

**方法**:

- `FIKRetargetRootMotionOpSettings GetSettings()`  
  Get the current op settings as a struct.
       * @return FIKRetargetRootMotionOpSettings struct with the current settings used by the op.
- `FName GetSourceRootBone()`  
  Get the root bone for the source.
       * @return the name of the root bone on the source skeleton.
- `FName GetTargetPelvisBone()`  
  Get the pelvis bone for the target.
       * @return the name of the pelvis bone on the target skeleton.
- `FName GetTargetRootBone()`  
  Get the root bone for the target.
       * @return the name of the root bone on the target skeleton.
- `SetSettings(FIKRetargetRootMotionOpSettings InSettings)`  
  Set the op settings. Input is a custom struct type for this op.
       * @param InSettings a FIKRetargetRootMotionOpSettings struct containing all the settings to apply to this op
- `SetSourceRootBone(FName InSourceRootBone)`  
  Set the root bone for the source.
       * @param InSourceRootBone the name of the root bone on the source skeleton.
- `SetTargetPelvisBone(FName InTargetPelvisBone)`  
  Set the pelvis bone for the target.
       * @param InTargetPelvisBone the name of the pelvis bone on the target skeleton.
- `SetTargetRootBone(FName InTargetRootBone)`  
  Set the root bone for the target.
       * @param InTargetRootBone the name of the root bone on the target skeleton.

---

