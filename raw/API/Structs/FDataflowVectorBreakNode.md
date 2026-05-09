### FDataflowVectorBreakNode


Break a vector in 4 components
if the input vector is of a lower dimension than 4, the remaining components will be set to zero

**属性**:

- `FLinearColor OverrideColor []`
- `FDataflowVectorTypes V [Vector to break into components]`
- `bool bActive [Used to calculate ContainerElementOffsets]`
- `bool bOverrideColor []`


**方法**:

- `FDataflowVectorBreakNode& opAssign(FDataflowVectorBreakNode Other)`

---

