### UInterchangeGenericMeshPipeline


Hide drop down will make sure the class is not showing in the class picker

**属性**:

- `int BoneInfluenceLimit [The maximum number of bone influences to allow each vertex in this mesh to use.
If set higher than the limit determined by the project settings, it has no effect.
If set to 0, the value is taken from the DefaultBoneInfluenceLimit project setting.]`
- `FVector BuildScale3D [The local scale applied when building the mesh.]`
- `float32 CompressedPositionPrecision [Precision used for compressing vertex positions (lower = better result but less compression, higher = more lossy compression but smaller size)]`
- `int CompressedTextureCoordinatesNumberOfBits [Bit-precision used for compressing texture coordinates (hight = better result but less compression, lower = more lossy compression but smaller size)]`
- `TWeakObjectPtr<UStaticMesh> DistanceFieldReplacementMesh [If set, replaces the distance field for all imported meshes with the distance field of the specified Static Mesh.]`
- `float32 DistanceFieldResolutionScale [Scale to apply to the mesh when allocating the distance field volume texture.
The default scale is 1, which assumes that the mesh will be placed unscaled in the world.]`
- `int DstLightmapIndex [Specifies the index of the UV channel that will store generated lightmap UVs.]`
- `EInterchangeMeshCollision FallbackCollisionType [Type used to generate a collision when no custom collisions are present in the file.]`
- `int FrameEnd`
- `int FrameStart`
- `TArray<float32> LODScreenSizes [This setting is only used if the Auto Compute LOD Screen Sizes setting is disabled.]`
- `FName LodGroup [The LOD group that will be assigned to this mesh.]`
- `int MaxLumenMeshCards [The maximum number of Lumen mesh cards to generate for this mesh.
More cards means that the surface will have better coverage, but will result in increased runtime overhead.
Set this to 0 to disable mesh card generation for this mesh.
The default is 12.]`
- `int MinLightmapResolution [When generating lightmaps, determines the amount of padding used to pack UVs. Set this value to the lowest-resolution lightmap you expect to use with the imported meshes.]`
- `float32 MorphThresholdPosition [Threshold to compare vertex position equality when computing morph target deltas.]`
- `EInterchangeMotionVectorsHandling MotionVectors`
- `int64 NaniteTriangleThreshold [Minimum triangle count a mesh needs to have in order to get Nanite enabled for it when BuildNanite is enabled.
When zero it means Nanite will always be enabled for all meshes when BuildNanite is enabled.]`
- `TWeakObjectPtr<UPhysicsAsset> PhysicsAsset [If set, use the specified PhysicsAsset. If not set and the Create Physics Asset setting is not enabled, the importer will not generate or set any physics asset.]`
- `EInterchangeSkeletalMeshContentType SkeletalMeshImportContentType [Determines what types of information are imported for skeletal meshes.]`
- `int SrcLightmapIndex [Specifies the index of the UV channel that will be used as the source when generating lightmaps.]`
- `float32 ThresholdPosition [Threshold value that is used to decide whether two vertex positions are equal.]`
- `float32 ThresholdTangentNormal [Threshold value that is used to decide whether two normals, tangents, or bi-normals are equal.]`
- `float32 ThresholdUV [Threshold value that is used to decide whether two UVs are equal.]`
- `bool bApplyConstantTopologyOptimizations [Force the preprocessor to only do optimization once instead of when the preprocessor decides. This may lead to some problems with certain meshes but makes sure motion
blur always works if the topology is constant.]`
- `bool bAutoComputeLODScreenSizes [If enabled, LOD Screen Sizes would be auto-computed.]`
- `bool bBuildNanite [If enabled, imported meshes will be rendered by Nanite at runtime. Make sure your meshes and materials meet the requirements for Nanite.
See also NaniteTriangleThreshold]`
- `bool bBuildReversedIndexBuffer [If enabled, builds a reversed index buffer for each static mesh.]`
- `bool bCollision [If enabled, custom collision will be imported. If enabled and there is no custom collision, a generic collision will be automatically generated.
If disabled, no collision will be created or imported.]`
- `bool bCombineSkeletalMeshes []`
- `bool bCombineStaticMeshes [If enabled, all translated static mesh nodes will be imported as a single static mesh.]`
- `bool bCreatePhysicsAsset [If enabled, create new PhysicsAsset if one doesn't exist.]`
- `bool bFlattenTracks [Whether or not to merge all vertex animation into one track]`
- `bool bForceCollisionPrimitiveGeneration [Sets whether to generate collision shapes even if the provided mesh data doesn't match the requested collision shape very well]`
- `bool bGenerateDistanceFieldAsIfTwoSided [Determines whether to generate the distance field treating every triangle hit as a front face.
When enabled, prevents the distance field from being discarded due to the mesh being open, but also lowers distance field ambient occlusion quality.]`
- `bool bGenerateLightmapUVs [If enabled, generates lightmap UVs for each static mesh.]`
- `bool bImportCollisionAccordingToMeshName [If enabled, meshes with certain prefixes will be imported as collision primitives for the mesh with the corresponding unprefixed name.

Supported prefixes are:
UBX_ Box collision
UCP_ Capsule collision
USP_ Sphere collision
UCX_ Convex collision]`
- `bool bImportGeometryCaches [If enabled, imports all geometry cache assets found in the sources.]`
- `bool bImportMorphTargets [If enabled, imports all morph target shapes found in the source.]`
- `bool bImportSkeletalMeshes [If enabled, imports all skeletal mesh assets found in the sources.]`
- `bool bImportStaticMeshes [If enabled, imports all static mesh assets found in the sources.]`
- `bool bImportVertexAttributes [If enabled, creates named vertex attributes for secondary vertex color data.]`
- `bool bMergeMorphTargetsWithSameName [If enabled, all morph target shapes with the same name will be merge together. Turn it to false if you want to control those morph with different values.]`
- `bool bOneConvexHullPerUCX [If enabled, each UCX collision mesh will be imported as a single convex hull. If disabled, a UCX mesh will be decomposed into its separate pieces and a convex hull generated for each.]`
- `bool bOptimizeIndexBuffers [Optimizes index buffers for each unique frame, to allow better cache coherency on the GPU. Very costly and time-consuming process, recommended to OFF.]`
- `bool bOverrideTimeRange [If enabled, override the imported animation range. Otherwise, the imported range is automatically set to the range of non-empty animated frames]`
- `bool bStoreImportedVertexNumbers [Store the imported vertex numbers. This lets you know the vertex numbers inside the DCC.
The values of each vertex number will range from 0 to 7 for a cube. Even if the number of positions might be 24.]`
- `bool bSupportFaceRemap [If enabled, imported static meshes are set up for use with physical material masks.]`
- `bool bUpdateSkeletonReferencePose [Enable this option to update the reference pose of the Skeleton (of the mesh). The reference pose of the mesh is always updated.]`
- `bool bUseHighPrecisionSkinWeights [If enabled, imported skin weights use 16 bits instead of 8 bits.]`

---

