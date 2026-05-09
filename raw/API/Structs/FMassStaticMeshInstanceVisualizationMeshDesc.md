### FMassStaticMeshInstanceVisualizationMeshDesc


**属性**:

- `TSubclassOf<UInstancedStaticMeshComponent> ISMComponentClass [InstancedStaticMeshComponent class to use to manage instances described by this struct instance]`
- `FTransform LocalTransform [A relative Transform from the parent, passed along to FMassISMCSharedData::LocalTransform]`
- `TArray<TObjectPtr<UMaterialInterface>> MaterialOverrides [Material overrides for the static mesh visual representation.

Array indices correspond to material slot indices on the static mesh.]`
- `float32 MaxLODSignificance [The maximum exclusive LOD significance to stop using this static mesh]`
- `UStaticMesh Mesh [The static mesh visual representation]`
- `float32 MinLODSignificance [The minimum inclusive LOD significance to start using this static mesh]`
- `bool bCastShadows [Controls whether the ISM can cast shadow or not]`


**方法**:

- `FMassStaticMeshInstanceVisualizationMeshDesc& opAssign(FMassStaticMeshInstanceVisualizationMeshDesc Other)`

---

