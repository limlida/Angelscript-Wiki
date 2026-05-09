### FMeshInstancingSettings


Mesh instance-replacement settings

**属性**:

- `TSubclassOf<AActor> ActorClassToUse [The actor class to attach new instance static mesh components to]`
- `TSubclassOf<UInstancedStaticMeshComponent> ISMComponentToUse [Whether to use the Instanced Static Mesh Compoment or the Hierarchical Instanced Static Mesh Compoment]`
- `int InstanceReplacementThreshold [The number of static mesh instances needed before a mesh is replaced with an instanced version]`
- `bool bSkipMeshesWithVertexColors [Whether to skip the conversion to an instanced static mesh for meshes with vertex colors.
Instanced static meshes do not support vertex colors per-instance, so conversion will lose
this data.]`
- `bool bUseHLODVolumes [Whether split up instanced static mesh components based on their intersection with HLOD volumes]`


**方法**:

- `FMeshInstancingSettings& opAssign(FMeshInstancingSettings Other)`

---

