### FSkeletalMeshLODInfo


Struct containing information for a particular LOD level, such as materials and info for when to use it.

**属性**:

- `UAnimSequence BakePose [Pose which should be used to reskin vertex influences for which the bones will be removed in this LOD level, uses ref-pose by default]`
- `UAnimSequence BakePoseOverride [This is used when you are sharing the LOD settings, but you'd like to override the BasePose. This precedes prior to BakePose]`
- `TArray<FBoneReference> BonesToPrioritize [Bones which should be prioritized for the quality, this will be weighted toward keeping source data. Use WeightOfPrioritization to control the value.]`
- `TArray<FBoneReference> BonesToRemove [Bones which should be removed from the skeleton for the LOD level]`
- `FSkeletalMeshBuildSettings BuildSettings [build settings to apply when building render data.]`
- `float32 LODHysteresis [Used to avoid 'flickering' when on LOD boundary. Only taken into account when moving from complex->simple.]`
- `float32 MorphTargetPositionErrorTolerance [The Morph target position error tolerance in microns. Larger values result in better compression and lower memory footprint, but also lower quality.]`
- `FSkeletalMeshOptimizationSettings ReductionSettings [Reduction settings to apply when building render data.]`
- `FPerPlatformFloat ScreenSize [ScreenSize to display this LOD.
The screen size is based around the projected diameter of the bounding
sphere of the model. i.e. 0.5 means half the screen's maximum dimension.]`
- `TArray<FSectionReference> SectionsToPrioritize [Sections which should be prioritized for the quality, this will be weighted toward keeping source data. Use WeightOfPrioritization to control the value.]`
- `ESkinCacheUsage SkinCacheUsage [How this LOD uses the skin cache feature. Auto will defer to the default project global option. If Support Ray Tracing is enabled on the mesh, will imply Enabled]`
- `TArray<FSkeletalMeshVertexAttributeInfo> VertexAttributes [List of vertex attributes to include for rendering and what type they should be]`
- `float32 WeightOfPrioritization [How much to consideration to give BonesToPrioritize and SectionsToPrioritize.  The weight is an additional vertex simplification penalty where 0 means nothing.]`
- `bool bAllowCPUAccess [Keeps this LODs data on the CPU so it can be used for things such as sampling in FX.]`
- `bool bAllowMeshDeformer [Whether a Mesh Deformer applied to the mesh asset or Skinned Mesh Component should be used on this LOD or not]`
- `bool bBuildHalfEdgeBuffers [Whether to force cache/cook half edge data that provides vertex connectivity information across material sections, which
may be useful for other systems like Mesh Deformer. Please note that Half Edge buffers are always built if the Skeletal Mesh Asset
has Default Mesh Deformer assigned, and the LOD has AllowMeshDeformer enabled,]`
- `bool bSupportUniformlyDistributedSampling [Mesh supports uniformly distributed sampling in constant time.
Memory cost is 8 bytes per triangle.
Example usage is uniform spawning of particles.]`


**方法**:

- `FSkeletalMeshLODInfo& opAssign(FSkeletalMeshLODInfo Other)`

---

