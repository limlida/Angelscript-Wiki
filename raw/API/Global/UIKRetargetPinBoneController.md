### UIKRetargetPinBoneController


The blueprint/python API for editing a Pin Bone Op

**方法**:

- `ClearAllBonePairs()`  
  Clear all the bone pairs
- `TMap<FName,FName> GetAllBonePairs()`  
  Get all the bone pairs currently stored in the op.
       * @return a map with target bones as keys and source bones as values.
- `FIKRetargetPinBoneOpSettings GetSettings()`  
  Get the current op settings as a struct.
       * @return FIKRetargetPinBoneOpSettings struct with the current settings used by the op.
- `SetBonePair(FName InBoneToCopyFrom, FName InBoneToCopyTo)`  
  Add a pair of bones to copy animation between.
       * @param InBoneToCopyFrom the name of the bone to copy animation from
       * @param InBoneToCopyTo the name of the bone to apply animation to
       * NOTE: if the bone to copy to is already present in the op, it will be updated with the new bone to copy from.
- `SetSettings(FIKRetargetPinBoneOpSettings InSettings)`  
  Set the op settings. Input is a custom struct type for this op.
       * @param InSettings a FIKRetargetPinBoneOpSettings struct containing all the settings to apply to this op

---

