### UNiagaraMeshRendererProperties


**属性**:

- `ENiagaraMeshFacingMode FacingMode [Determines how the mesh orients itself relative to the camera.]`
- `UStaticMesh FirstFlipbookFrame [The static mesh to use for the first frame of the flipbook. Its name will also be used to find subsequent frames of a similar name.
NOTE: The subsequent frames are expected to exist in the same content directory as the first frame of the flipbook, otherwise they
will not be found or used.]`
- `FString FlipbookSuffixFormat [Provides the format of the suffix of the names of the static meshes when searching for flipbook frames. "{frame_number}" is used to mark
where the frame number should appear in the suffix. If "Particle Mesh" contains this suffix, the number in its name will be treated as
the starting frame index. Otherwise, it will assume "Particle Mesh" is frame number 0, and that subsequent frames follow this format,
starting with frame number 1.]`
- `uint FlipbookSuffixNumDigits [The number of digits to expect in the frame number of the flipbook page. A value of 1 will expect no leading zeros in the package names,
and can also be used for names with frame numbers that extend to 10 and beyond (Example: Frame_1, Frame_2, ..., Frame_10, Frame_11, etc.)]`
- `ENiagaraRendererGpuTranslucentLatency GpuTranslucentLatency [Gpu simulations run at different points in the frame depending on what features are used, i.e. depth buffer, distance fields, etc.
Opaque materials will run latent when these features are used.
Translucent materials can choose if they want to use this frames or the previous frames data to match opaque draws.]`
- `FVector LockedAxis [Arbitrary axis by which to lock facing rotations]`
- `ENiagaraMeshLockedAxisSpace LockedAxisSpace [Specifies what space the locked axis is in]`
- `FNiagaraRendererMaterialParameters MaterialParameters [If this array has entries, we will create a MaterialInstanceDynamic per Emitter instance from Material and set the Material parameters using the Niagara simulation variables listed.]`
- `float32 MaxCameraDistance []`
- `FVector MeshBoundsScale [Scale factor applied to all of the meshes bounds.
This impacts distance based and per instance frustum culling.  Per instance frustum culling is enabled by default
when GPU scene is enabled.  When using WPO with a material that may expand the mesh beyond the original bounds instances
can be frustum culled incorrectly, this allows you to grow the bounds to avoid this issue.]`
- `TArray<FNiagaraMeshRendererMeshProperties> Meshes [The static mesh(es) to be instanced when rendering mesh particles.

NOTES:
- If "Override Material" is not specified, the mesh's material is used. Override materials must have the Niagara Mesh Particles flag checked.
- If "Enable Mesh Flipbook" is specified, this mesh is assumed to be the first frame of the flipbook.]`
- `FNiagaraParameterBinding MeshesBinding []`
- `float32 MinCameraDistance []`
- `uint NumFlipbookFrames [The number of frames (static meshes) to be included in the flipbook.]`
- `TArray<FNiagaraMeshMaterialOverride> OverrideMaterials [The materials to be used instead of the StaticMesh's materials. Note that each material must have the Niagara Mesh Particles flag checked. If the ParticleMesh
      requires more materials than exist in this array or any entry in this array is set to None, we will use the ParticleMesh's existing Material instead.]`
- `uint RendererVisibility [If a render visibility tag is present, particles whose tag matches this value will be visible in this renderer.]`
- `ENiagaraSortMode SortMode [Determines how we sort the particles prior to rendering.]`
- `ENiagaraRendererSortPrecision SortPrecision [Sort precision to use when sorting is active.]`
- `ENiagaraRendererSourceDataMode SourceMode [Whether or not to draw a single element for the Emitter or to draw the particles.]`
- `FVector2D SubImageSize [When using SubImage lookups for particles, this variable contains the number of columns in X and the number of rows in Y.]`
- `bool bCastShadows [When disabled the renderer will not cast shadows.
The component controls if shadows are enabled, this flag allows you to disable the renderer casting shadows.]`
- `bool bEnableCameraDistanceCulling [Enables frustum culling of individual mesh particles]`
- `bool bEnableFrustumCulling [Enables frustum culling of individual mesh particles.
GPU Scene will already perform per particle culling for meshes renderers, therefore enabling this may result in redundant work.]`
- `bool bEnableMeshFlipbook [When checked, will treat 'ParticleMesh' as the first frame of the flipbook, and will use the other mesh flipbook options to find the other frames]`
- `bool bIncludeInHitProxy [When disabled the mesh batches do not contribute to the hit proxy, i.e. they are not part of editor selection.]`
- `bool bLockedAxisEnable [If true and in a non-default facing mode, will lock facing direction to an arbitrary plane of rotation]`
- `bool bOverrideMaterials [Whether or not to use the OverrideMaterials array instead of the mesh's existing materials.]`
- `bool bSortOnlyWhenTranslucent [If true, the particles are only sorted when using a translucent material.]`
- `bool bSubImageBlend [If true, blends the sub-image UV lookup with its next adjacent member using the fractional part of the SubImageIndex float value as the linear interpolation factor.]`

---

