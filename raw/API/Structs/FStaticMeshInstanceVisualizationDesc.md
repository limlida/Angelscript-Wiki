### FStaticMeshInstanceVisualizationDesc


**属性**:

- `TArray<float32> CustomDataFloats [Custom data that can eventually be propagated to UInstancedStaticMeshComponent::PerInstanceSMCustomData]`
- `TArray<FMassStaticMeshInstanceVisualizationMeshDesc> Meshes [Mesh descriptions. These will be instanced together using the same transform for each, to
visualize the given agent.]`
- `FTransform TransformOffset [Transform to offset the static meshes if not align the mass agent transform]`
- `bool bUseTransformOffset [Boolean to enable code to transform the static meshes if not align the mass agent transform]`


**方法**:

- `FStaticMeshInstanceVisualizationDesc& opAssign(FStaticMeshInstanceVisualizationDesc Other)`

---

