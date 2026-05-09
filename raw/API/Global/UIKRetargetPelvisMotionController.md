### UIKRetargetPelvisMotionController


The blueprint/python API for editing a Pelvis Motion Op

**方法**:

- `FIKRetargetPelvisMotionOpSettings GetSettings()`  
  Get the current op settings as a struct.
       * @return FIKRetargetPelvisMotionOpSettings struct with the current settings used by the op.
- `FName GetSourcePelvisBone()`  
  Get the pelvis bone for the source.
       * @return the name of the pelvis bone on the source skeleton.
- `FName GetTargetPelvisBone()`  
  Get the pelvis bone for the target.
       * @return the name of the pelvis bone on the target skeleton.
- `SetSettings(FIKRetargetPelvisMotionOpSettings InSettings)`  
  Set the op settings. Input is a custom struct type for this op.
       * @param InSettings a FIKRetargetPelvisMotionOpSettings struct containing all the settings to apply to this op
- `SetSourcePelvisBone(FName InSourcePelvisBone)`  
  Set the pelvis bone for the source.
       * @param InSourcePelvisBone the name of the pelvis bone on the source skeleton.
- `SetTargetPelvisBone(FName InTargetPelvisBone)`  
  Set the pelvis bone for the target.
       * @param InTargetPelvisBone the name of the pelvis bone on the target skeleton.

---

