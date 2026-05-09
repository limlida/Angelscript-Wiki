### ULiveLinkRemapAsset


Remap asset for data coming from Live Link. Allows simple application of bone transforms into current pose based on name remapping only

**方法**:

- `FName GetRemappedBoneName(FName BoneName) const`  
  Blueprint Implementable function for getting a remapped bone name from the original
- `FName GetRemappedCurveName(FName CurveName) const`  
  Blueprint Implementable function for getting a remapped curve name from the original
- `RemapCurveElements(TMap<FName,float32>& CurveItems) const`  
  Blueprint Implementable function for remapping, adding or otherwise modifying the curve element data from Live Link. This is run after GetRemappedCurveName

---

