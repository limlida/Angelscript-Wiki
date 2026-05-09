### UInterchangeCommonPipelineDataFactoryNode


This factory node is where pipelines can set global data that can be used by factories.

**方法**:

- `bool GetBakeMeshes(bool& AttributeValue) const`  
  Return the value of the Bake Meshes setting set by the pipelines.
- `bool GetBakePivotMeshes(bool& AttributeValue) const`  
  Return the value of the Bake Meshes setting set by the pipelines.
- `bool GetCustomGlobalOffsetTransform(FTransform& AttributeValue) const`  
  Return the global offset transform set by the pipelines.
- `bool SetBakeMeshes(bool AttributeValue)`  
  Pipelines can set this Bake Meshes setting. Factories use this to identify whether they should apply global transforms to static meshes and skeletal meshes.
- `bool SetBakePivotMeshes(bool AttributeValue)`  
  Pipelines can set this Bake Meshes setting. Factories use this to identify whether they should apply global transforms to static meshes and skeletal meshes.
- `bool SetCustomGlobalOffsetTransform(const UInterchangeBaseNodeContainer NodeContainer, FTransform AttributeValue)`  
  Pipelines can set a global transform. Factories will use this global offset when importing assets.

---

