### FBranchFloatDataflowNode


Branch between two float inputs based on boolean condition

**属性**:

- `float32 A [Float input]`
- `float32 B [Float input]`
- `FLinearColor OverrideColor []`
- `bool bActive [Used to calculate ContainerElementOffsets]`
- `bool bCondition [If true, Output = A, otherwise Output = B]`
- `bool bOverrideColor []`


**方法**:

- `FBranchFloatDataflowNode& opAssign(FBranchFloatDataflowNode Other)`

---

