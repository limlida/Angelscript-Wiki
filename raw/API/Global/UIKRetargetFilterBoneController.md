### UIKRetargetFilterBoneController


The blueprint/python API for editing a Filter Bone Op

**方法**:

- `AddBoneToFilter(FName InTargetBone)`  
  Add a target bone to filter.
- `ClearBonesToFilter()`  
  Clear all the bones
- `TArray<FName> GetAllBonesToFilter()`  
  Get all the bones currently stored in the op.
       * @return an array of target bone names
- `FIKRetargetFilterBoneOpSettings GetSettings()`  
  Get the current op settings as a struct.
       * @return FIKRetargetPinBoneOpSettings struct with the current settings used by the op.
- `SetSettings(FIKRetargetFilterBoneOpSettings InSettings)`  
  Set the op settings. Input is a custom struct type for this op.
       * @param InSettings a FIKRetargetPinBoneOpSettings struct containing all the settings to apply to this op

---

