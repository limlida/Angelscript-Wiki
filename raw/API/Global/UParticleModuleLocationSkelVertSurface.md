### UParticleModuleLocationSkelVertSurface


**属性**:

- `USkeletalMesh EditorSkelMesh [The name of the skeletal mesh to use in the editor]`
- `uint InheritUVChannel [UV channel to inherit from the spawn mesh, internally clamped to those available.]`
- `float32 InheritVelocityScale [A scale on how much of the bone's velocity a particle will inherit.]`
- `float32 NormalCheckToleranceDegrees [Normal tolerance.  0 degrees means it must be an exact match, 180 degrees means it can be any angle.]`
- `FVector NormalToCompare [Use this normal to restrict spawning locations]`
- `FName SkelMeshActorParamName [The parameter name of the skeletal mesh actor that supplies the SkelMeshComponent for in-game.]`
- `ELocationSkelVertSurfaceSource SourceType [Whether the module uses Verts or Surfaces for locations.

VERTSURFACESOURCE_Vert          - Use Verts as the source locations.
VERTSURFACESOURCE_Surface       - Use Surfaces as the source locations.]`
- `FVector UniversalOffset [An offset to apply to each vert/surface]`
- `TArray<FName> ValidAssociatedBones [This module will only spawn from verts or surfaces associated with the bones in this list]`
- `TArray<int> ValidMaterialIndices [Array of material indices that are valid materials to spawn from.
If empty, any material will be considered valid]`
- `bool bEnforceNormalCheck [When true use the RestrictToNormal and NormalTolerance values to check surface normals]`
- `bool bInheritBoneVelocity [If true, particles inherit the associated bone velocity when spawned]`
- `bool bInheritUV [If true, particles inherit the associated UV data on spawn. Accessed through dynamic parameter module X and Y, must be a "Spawn Time Only" parameter on "AutoSet" mode. This feature is not supported for GPU particles.]`
- `bool bInheritVertexColor [If true, particles inherit the associated vertex color on spawn. This feature is not supported for GPU particles.]`
- `bool bOrientMeshEmitters [If true, rotate mesh emitter meshes to orient w/ the vert/surface]`
- `bool bUpdatePositionEachFrame [If true, update the particle locations each frame with that of the vert/surface]`

---

