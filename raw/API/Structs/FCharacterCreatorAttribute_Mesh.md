### FCharacterCreatorAttribute_Mesh


Base class for a default mesh for a slot

**属性**:

- `FGameplayTagContainer HideSlots [Add any slots you need to hide in here. IE a helmet might want Slot.Groom.Hair added as a hide slot, so hair hides when helmet is equipped.]`
- `TSoftObjectPtr<USkeletalMesh> Mesh [The mesh we should apply to the character]`
- `TSoftObjectPtr<USkeletalMesh> Mesh1P [The mesh we should apply to the character in 1P - if empty we'll use 3P mesh for 1P. Only used for hands and torso meshes.]`
- `TSoftClassPtr<UAnimInstance> MeshAnimBP [If we're not using leader pose this is the animBP the mesh should use]`
- `FTransform MeshAttachOffset [The attach offset for the mesh, if desired.]`
- `FName MeshAttachSocket [The attach socket for the mesh, if one is desired.]`
- `TArray<FCreatorMeshMaterial> MeshMaterials [Maps material index -> Creator mesh material. By default if a value doesn't exist in this map we'll just use the material
 that was set on the mesh by default and wont set any params on it or anything.]`
- `EMeshPerspectiveType MeshPerspectiveType`
- `TArray<FCreatorMeshMorph> Morphs [The morphs to apply to the mesh]`
- `TSoftObjectPtr<UStaticMesh> StaticMesh [The static mesh to use.]`
- `bool bIsStaticMesh [Should this clothing piece use a static mesh instead of a skeletal mesh]`
- `bool bUseLeaderPose [Should the mesh follow the leader pose component?]`


**方法**:

- `FCharacterCreatorAttribute_Mesh& opAssign(FCharacterCreatorAttribute_Mesh Other)`

---

