### UWaterBodyRiverComponent


**属性**:

- `UMaterialInterface LakeTransitionMaterial [Material used when a river is overlapping a lake.]`
- `UMaterialInterface OceanTransitionMaterial [This is the material used when a river is overlapping the ocean.]`


**方法**:

- `float32 GetRiverDepthAtSplineInputKey(float32 InKey) const`
- `float32 GetRiverWidthAtSplineInputKey(float32 InKey) const`
- `SetLakeAndOceanTransitionMaterials(UMaterialInterface InLakeTransition, UMaterialInterface InOceanTransition)`
- `SetLakeTransitionMaterial(UMaterialInterface InMat)`
- `SetOceanTransitionMaterial(UMaterialInterface InMat)`
- `SetRiverDepthAtSplineInputKey(float32 InKey, float32 InDepth)`
- `SetRiverWidthAtSplineInputKey(float32 InKey, float32 InWidth)`

---

