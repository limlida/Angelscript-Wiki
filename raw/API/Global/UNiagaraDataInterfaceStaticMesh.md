### UNiagaraDataInterfaceStaticMesh


Data Interface allowing sampling of static meshes.

**属性**:

- `UStaticMesh DefaultMesh [Mesh used to sample from when not overridden by a source actor from the scene. This mesh is NOT removed from cooked builds.]`
- `TArray<FName> FilteredSockets [List of filtered sockets to use.]`
- `int InstanceIndex [When attached to an Instanced Static Mesh, which instance should be read from.]`
- `int LODIndex [Static Mesh LOD to sample.
When the desired LOD is not available, the next available LOD is used.
When LOD Index is negative, Desired LOD = Num LODs - LOD Index.]`
- `FNiagaraUserParameterBinding LODIndexUserParameter [Reference to a user parameter if we're reading one.]`
- `FNiagaraUserParameterBinding MeshParameterBinding [Mesh parameter binding can be either an Actor (in which case we find the component), static mesh component or a static mesh.]`
- `TSoftObjectPtr<UStaticMesh> PreviewMesh [Mesh used to sample from when not overridden by a source actor from the scene. Only available in editor for previewing. This is removed in cooked builds.]`
- `FNDIStaticMeshSectionFilter SectionFilter [Array of filters the can be used to limit sampling to certain sections of the mesh.]`
- `TSoftObjectPtr<AActor> SoftSourceActor [The source actor from which to sample. Takes precedence over the direct mesh. Note that this can only be set when used as a user variable on a component in the world.]`
- `ENDIStaticMesh_SourceMode SourceMode [Controls how to retrieve the Static Mesh Component to attach to.]`
- `bool bAllowSamplingFromStreamingLODs [When true, we allow this DI to sample from streaming LODs. Selectively overriding the CVar fx.Niagara.NDIStaticMesh.UseInlineLODsOnly.]`
- `bool bCaptureTransformsPerFrame [If true we capture the transforms from the mesh component each frame.]`
- `bool bUsePhysicsBodyVelocity [If true then the mesh velocity is taken from the mesh component's physics data. Otherwise it will be calculated by diffing the component transforms between ticks, which is more reliable but won't work on the first frame.]`

---

