### FGeometryCollectionTransferVertexScalarAttributeNode


Transfer float properties from a sample collection to a target collection.

**属性**:

- `FCollectionAttributeKey AttributeKey [The name of the vertex attribute to generate indices from.]`
- `float32 BoundMultiplier [Max bound multiplier for the Bounding Volume Hierarchy(BVH) target's particle search radius.]`
- `EDataflowTransferNodeBoundingVolume BoundingVolumeType [Bounding volume type for source assets[default: Triangle]]`
- `float32 EdgeMultiplier [Edge multiplier for the Bounding Volume Hierarchy(BVH) target's particle search radius.]`
- `EDataflowTransferNodeFalloff Falloff [Falloff of sample value based on distance from sample triangle[default: Squared]]`
- `float32 FalloffThreshold [Threshold based on distance from sample triangle.Values sampled past the threshold will falloff.[Defaults to 1 percent of triangle size(0.01)]]`
- `FLinearColor OverrideColor []`
- `EDataflowTransferNodeSampleScale SampleScale [Bounding volume hierarchy cell size for neighboring vertices to transfer into[default: Asset]]`
- `bool bActive [Used to calculate ContainerElementOffsets]`
- `bool bOverrideColor []`


**方法**:

- `FGeometryCollectionTransferVertexScalarAttributeNode& opAssign(FGeometryCollectionTransferVertexScalarAttributeNode Other)`

---

