### UNiagaraDataInterfaceSkeletalMesh


Data Interface allowing sampling of skeletal meshes.

**属性**:

- `TArray<FName> ComponentTags [If defined, the supplied tags will be used to identify a valid component]`
- `USkeletalMesh DefaultMesh [Mesh used to sample from when not overridden by a source actor from the scene. This mesh is NOT removed from cooked builds.]`
- `FName ExcludeBoneName [Optionally remove a single bone from Random / Random Unfiltered access.
You can still include this bone in filtered list and access using the direct index functionality.]`
- `TArray<FName> FilteredBones [Set of filtered bones that can be used for sampling. Select from these with GetFilteredBoneAt and RandomFilteredBone.]`
- `TArray<FName> FilteredSockets [Set of filtered sockets that can be used for sampling. Select from these with GetFilteredSocketAt and RandomFilteredSocket.]`
- `FNiagaraUserParameterBinding MeshUserParameter [Reference to a user parameter if we're reading one.]`
- `TSoftObjectPtr<USkeletalMesh> PreviewMesh [Mesh used to sample from when not overridden by a source actor from the scene. Only available in editor for previewing. This is removed in cooked builds.]`
- `TArray<FName> SamplingRegions [Sampling regions on the mesh from which to sample. Leave this empty to sample from the whole mesh.]`
- `ENDISkeletalMesh_SkinningMode SkinningMode [Selects which skinning mode to use, for most cases Skin On The Fly will cover your requirements, see individual tooltips for more information.]`
- `TSoftObjectPtr<AActor> SoftSourceActor [The source actor from which to sample. Takes precedence over the direct mesh. Note that this can only be set when used as a user variable on a component in the world.]`
- `ENDISkeletalMesh_SourceMode SourceMode [Controls how to retrieve the Skeletal Mesh Component to attach to.]`
- `int UvSetIndex []`
- `int WholeMeshLOD [If no regions are specified, we'll sample the whole mesh at this LODIndex.
-1 will use the lowest quality LOD available, i.e. Number of LODs - 1.]`
- `bool bExcludeBone`
- `bool bReadDeformedGeometry [Overrides the project setting and allows you to opt out of reading from deformed geometry.
These is not performance gain from doing this, the branches will still exist in the generated code.]`
- `bool bRequireCurrentFrameData [When this option is disabled, we use the previous frame's data for the skeletal mesh and can often issue the simulation early. This greatly
      reduces overhead and allows the game thread to run faster, but comes at a tradeoff if the dependencies might leave gaps or other visual artifacts.]`

---

