### FGeometryCollectionTransferVertexSkinWeightsNode


Transfer skin weights from a source collection to a target collection.
Component Transfer is used when all geometries from the source collection have matched names with the target collection.
Otherwise, Global Transfer is used.
Geometries are matched when the geometry's BoneName can be found as the start of the BoneName of a geometry in the target collection.
Use TransformNameSuffix to add extra string to the source geometry's BoneName to avoid multiple matched names.
For example, source geometry has name SK_10 and target geometry has name SK_10_tet1
For all names, Check BoneName attribute in Transform group in the collection.

**属性**:

- `float32 BoundMultiplier [Max bound multiplier for the Bounding Volume Hierarchy(BVH) target's particle search radius.]`
- `EDataflowTransferVertexAttributeNodeBoundingVolume BoundingVolumeType [Bounding volume type for source assets[default: Triangle]]`
- `float32 EdgeMultiplier [Edge multiplier for the Bounding Volume Hierarchy(BVH) target's particle search radius.]`
- `EDataflowTransferVertexAttributeNodeFalloff Falloff [Falloff of source value based on distance from source triangle[default: Squared]]`
- `float32 FalloffThreshold [Threshold based on distance from source triangle.Values past the threshold will falloff.[Defaults to 1 percent of triangle size(0.01)]]`
- `FLinearColor OverrideColor []`
- `EDataflowTransferVertexAttributeNodeSourceScale SourceScale [Bounding volume hierarchy cell size for neighboring vertices to transfer into[default: Asset]]`
- `EDataflowTransferVertexAttributeNodeTransferMethod TransferMethod [Transfer method [default: Paired Geometry Transfer]]`
- `FString TransformNameSuffix [Suffix of transform names for geometry matching during transfer[default: _Tet]. In CreateTetrahedron node we add _Tet to tetrahedral geometries.]`
- `bool bActive [Used to calculate ContainerElementOffsets]`
- `bool bOverrideColor []`


**方法**:

- `FGeometryCollectionTransferVertexSkinWeightsNode& opAssign(FGeometryCollectionTransferVertexSkinWeightsNode Other)`

---

