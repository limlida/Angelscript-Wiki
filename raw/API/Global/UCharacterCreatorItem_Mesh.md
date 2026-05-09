### UCharacterCreatorItem_Mesh


The base class for a mesh item we can select to apply to the player. A mesh item consists of the slot we'll apply that mesh to,
the mesh itself, the materials to go on the mesh, and what parameters can be tweaked on those materials.

**属性**:

- `TArray<FCreatorMeshMaterialOption> MaterialOptions [The materials that can be selected for this mesh. Also contains parameters we can change on the material]`
- `TSoftObjectPtr<USkeletalMesh> Mesh [The mesh this option will set the slot mesh to]`
- `TSoftClassPtr<UAnimInstance> MeshAnimBP [The animation blueprint this mesh should use, if we don't want it to leader]`
- `TArray<FCreatorMeshMorphOption> Morphs [The morphs to apply to the material]`
- `TArray<TObjectPtr<UCharacterCreatorOption_Scalar>> ScalarOptions [Meshes can optionally nest scalar and vector options within themselves - ie hoodie has Hoodie Color A vector option in it, etc.]`
- `FGameplayTag Slot [The slot this mesh will apply itself to]`
- `TArray<TObjectPtr<UCharacterCreatorOption_Vector>> VectorOptions [Meshes can optionally nest scalar and vector options within themselves - ie hoodie has Hoodie Color A vector option in it, etc.]`
- `bool bUseLeaderPose [Should this mesh use the leader pose component or just do its own thing instead]`

---

