### FDataflowVectorCrossProductNode


Compute the cross product of two vectors :  CrossProduct = B^A
This node only operates in 3 dimensions, inputs will be converted to a 3D vector internally and result will be a vector with a zero W component

**属性**:

- `FDataflowVectorTypes A [A Vector operand]`
- `FDataflowVectorTypes B [B Vector operand]`
- `FLinearColor OverrideColor []`
- `bool bActive [Used to calculate ContainerElementOffsets]`
- `bool bOverrideColor []`


**方法**:

- `FDataflowVectorCrossProductNode& opAssign(FDataflowVectorCrossProductNode Other)`

---

