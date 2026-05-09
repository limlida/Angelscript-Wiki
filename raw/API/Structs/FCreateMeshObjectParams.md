### FCreateMeshObjectParams


FCreateMeshObjectParams is a collection of input data intended to be passed to
UModelingObjectsCreationAPI::CreateMeshObject(). Not all data necessarily needs
to be specified, this will depend on the particular implementation. The comments
below are representative of how this data structure is used in the Tools and
API implementation(s) provided with Unreal Engine, but end-user implementors
could abuse these fields as necessary.

The definition of a "mesh object" is implementation-specific.

**属性**:

- `TArray<TObjectPtr<UMaterialInterface>> AssetMaterials [Optional Materials for a newly-created Mesh Asset, if this is applicable for the created mesh object]`
- `FString BaseName [The base name of the new mesh object]`
- `ECollisionTraceFlag CollisionMode [Which Collision mode to enable on the new mesh object, if supported]`
- `TArray<TObjectPtr<UMaterialInterface>> Materials [Materials for the new mesh object]`
- `FMeshNaniteSettings NaniteSettings [Specify the Nanite Settings for this new mesh object, only used if bEnableNanite=true]`
- `UPrimitiveComponent SourceComponent [A Source Component the new mesh is based on, if such a Component exists]`
- `UWorld TargetWorld [The World/Level the new mesh object should be created in (if known)]`
- `FTransform Transform [The 3D local-to-world transform for the new mesh object]`
- `ECreateObjectTypeHint TypeHint [A suggested type for the newly-created Mesh (possibly ignored)]`
- `UClass TypeHintClass [A suggested UClass type for the newly-created Object (possibly ignored)]`
- `int TypeHintExtended [An arbitrary integer that can be used to pass data to an API implementation]`
- `bool bEnableCollision [Specify whether the new mesh object should have collision support/data]`
- `bool bEnableNanite [Specify whether Nanite should be enabled on this new mesh object]`
- `bool bEnableRaytracingSupport [Specify whether normals should be automatically recomputed for this new mesh object]`
- `bool bEnableRecomputeNormals [Specify whether normals should be automatically recomputed for this new mesh object]`
- `bool bEnableRecomputeTangents [Specify whether tangents should be automatically recomputed for this new mesh object]`
- `bool bGenerateLightmapUVs [Specify whether to auto-generate Lightmap UVs (if applicable for the output mesh type)]`


**方法**:

- `FCreateMeshObjectParams& opAssign(FCreateMeshObjectParams Other)`

---

