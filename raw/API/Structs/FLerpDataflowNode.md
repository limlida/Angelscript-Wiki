### FLerpDataflowNode


Linearly interpolates between A and B based on Alpha. (100% of A when Alpha = 0.0 and 100% of B when Alpha = 1.0)

**属性**:

- `float32 A []`
- `float32 Alpha []`
- `float32 B []`
- `FLinearColor OverrideColor []`
- `bool bActive [Used to calculate ContainerElementOffsets]`
- `bool bOverrideColor []`


**方法**:

- `FLerpDataflowNode& opAssign(FLerpDataflowNode Other)`

---

