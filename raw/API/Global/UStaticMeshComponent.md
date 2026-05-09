### UStaticMeshComponent


StaticMeshComponent is used to create an instance of a UStaticMesh.
A static mesh is a piece of geometry that consists of a static set of polygons.

@see https://docs.unrealengine.com/latest/INT/Engine/Content/Types/StaticMeshes/
@see UStaticMesh

**属性**:

- `float32 DistanceFieldIndirectShadowMinVisibility [Controls how dark the dynamic indirect shadow can be.]`
- `float32 DistanceFieldSelfShadowBias [Useful for reducing self shadowing from distance field methods when using world position offset to animate the mesh's vertices.]`
- `int ForcedLodModel [If 0, auto-select LOD level. if >0, force to (ForcedLodModel-1).]`
- `FLightmassPrimitiveSettings LightmassSettings [The Lightmass settings for this object.]`
- `FIntPoint MaterialCacheTileCount [Number of tiles allocated to the material cache textures, may be modified by tag properties]`
- `int MinLOD [Specifies the smallest LOD that will be used for this component.
This is ignored if ForcedLodModel is enabled.]`
- `float32 NanitePixelProgrammableDistance [Used to forcefully disable pixel programmable rasterization of Nanite when the mesh is further than a given distance from the camera.]`
- `int OverriddenLightMapRes [Light map resolution to use on this component, used if bOverrideLightMapRes is true and there is a valid StaticMesh.]`
- `int OverriddenMeshPaintTextureCoordinateIndex [The overriden coordinate index to use when texture color painting on this component.]`
- `int OverriddenMeshPaintTextureResolution [The overriden resolution of texture color mesh paint textures on this component.]`
- `UStaticMesh StaticMesh [The static mesh that this component uses to render]`
- `float32 StreamingDistanceMultiplier [Allows adjusting the desired resolution of streaming textures that uses UV 0.  1.0 is the default, whereas a higher value increases the streamed-in resolution.]`
- `FColor WireframeColorOverride [Wireframe color to use if bOverrideWireframeColor is true]`
- `int WorldPositionOffsetDisableDistance [Distance at which to disable World Position Offset for an entire instance (0 = Never disable WPO).]`
- `bool bCastDistanceFieldIndirectShadow [Whether to use the mesh distance field representation (when present) for shadowing indirect lighting (from lightmaps or skylight) on Movable components.
This works like capsule shadows on skeletal meshes, except using the mesh distance field so no physics asset is required.
The StaticMesh must have 'Generate Mesh Distance Field' enabled, or the project must have 'Generate Mesh Distance Fields' enabled for this feature to work.]`
- `bool bDisallowNanite [Forces this component to use fallback mesh for rendering if Nanite is enabled on the mesh.]`
- `bool bEnableTextureColorMeshPainting [If false, texture color mesh painting is disabled on this component.]`
- `bool bEnableVertexColorMeshPainting [If false, vertex color mesh painting is disabled on this component.
This may be set to false by blueprint functions that override vertex colors in construction script.]`
- `bool bEvaluateWorldPositionOffset [Whether to evaluate World Position Offset.]`
- `bool bEvaluateWorldPositionOffsetInRayTracing [Whether to evaluate World Position Offset for ray tracing.
This is only used when running with r.RayTracing.Geometry.StaticMeshes.WPO=1]`
- `bool bForceNaniteForMasked [Forces this component to always use Nanite for masked materials, even if FNaniteSettings::bAllowMaskedMaterials=false]`
- `bool bIgnoreInstanceForTextureStreaming [Ignore this instance of this static mesh when calculating streaming information.
This can be useful when doing things like applying character textures to static geometry,
to avoid them using distance-based streaming.]`
- `bool bOverrideDistanceFieldSelfShadowBias [Whether to override the DistanceFieldSelfShadowBias setting of the static mesh asset with the DistanceFieldSelfShadowBias of this component.]`
- `bool bOverrideLightMapRes [Whether to override the lightmap resolution defined in the static mesh.]`
- `bool bOverrideMeshPaintTextureCoordinateIndex [Whether to override the MeshPaintTextureCoordinateIndex set on the static mesh.]`
- `bool bOverrideMeshPaintTextureResolution [Whether to override the MeshPaintTextureCoordinateIndex set on the static mesh.]`
- `bool bOverrideMinLOD [Whether to override the MinLOD setting of the static mesh asset with the MinLOD of this component.]`
- `bool bOverrideWireframeColor [If true, WireframeColorOverride will be used. If false, color is determined based on mobility and physics simulation settings]`
- `bool bReverseCulling [Controls whether the static mesh component's backface culling should be reversed]`
- `bool bSortTriangles [Enable dynamic sort mesh's triangles to remove ordering issue when rendered with a translucent material]`
- `bool bUseDefaultCollision [Use the collision profile specified in the StaticMesh asset.]`
- `bool bWorldPositionOffsetWritesVelocity [Whether world position offset turns on velocity writes.
If the WPO isn't static then setting false may give incorrect motion vectors.
But if we know that the WPO is static then setting false may save performance.]`


**方法**:

- `bool GetInitialEvaluateWorldPositionOffset()`  
  Get the initial value of bEvaluateWorldPositionOffset. This is the value when BeginPlay() was last called, or if UpdateInitialEvaluateWorldPositionOffset is called.
- `GetLocalBounds(FVector& Min, FVector& Max) const`  
  Get Local bounds
- `SetDistanceFieldSelfShadowBias(float32 NewValue)`  
  Sets the component's DistanceFieldSelfShadowBias.  bOverrideDistanceFieldSelfShadowBias must be enabled for this to have an effect.
- `SetEvaluateWorldPositionOffset(bool NewValue)`
- `SetEvaluateWorldPositionOffsetInRayTracing(bool NewValue)`
- `SetForceDisableNanite(bool bInForceDisableNanite)`  
  Force disabling of Nanite rendering. When true, Will swap to the the fallback mesh instead.
- `SetForcedLodModel(int NewForcedLodModel)`
- `SetReverseCulling(bool ReverseCulling)`  
  Set forced reverse culling
- `bool SetStaticMesh(UStaticMesh NewMesh)`  
  Change the StaticMesh used by this instance.
- `SetWorldPositionOffsetDisableDistance(int NewValue)`
- `UpdateInitialEvaluateWorldPositionOffset()`  
  This manually updates the initial value of bEvaluateWorldPositionOffset to be the current value.
    This is useful if the default value of bEvaluateWorldPositionOffset is changed after constructing
    the component.

---

