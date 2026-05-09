### UIKRetargetCopyBasePoseController


The blueprint/python API for editing a Copy Base Pose Op

**方法**:

- `AddBoneToExclude(FName InBoneName) const`  
  Add a bone to the "BonesToExclude" array
- `TArray<FName> GetBonesToExclude() const`  
  Get an array of all the excluded bones.
- `FName GetCopyFromStart() const`  
  Get the name of the bone to use as the "Copy From Start" in the op
- `FIKRetargetCopyBasePoseOpSettings GetSettings()`  
  Get the current op settings as a struct.
       * @return FIKRetargetCopyBasePoseOpSettings struct with the current settings used by the op.
- `ResetBonesToExclude() const`  
  Reset the array of Bones to Exclude
- `SetCopyFromStart(FName InBoneName) const`  
  Set the name of the bone to use as the "Copy From Start" in the op
- `SetSettings(FIKRetargetCopyBasePoseOpSettings InSettings)`  
  Set the op settings. Input is a custom struct type for this op.
       * @param InSettings a FIKRetargetCopyBasePoseOpSettings struct containing all the settings to apply to this op

---

