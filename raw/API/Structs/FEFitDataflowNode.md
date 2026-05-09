### FEFitDataflowNode


Fits a value from one range to another

Takes the value num from the range (oldmin, oldmax) and shifts it to the corresponding value in the new range (newmin, newmax). Unlike fit, this function does not clamp values in the given range.

**属性**:

- `float32 Float []`
- `float32 NewMax []`
- `float32 NewMin []`
- `float32 OldMax []`
- `float32 OldMin []`
- `FLinearColor OverrideColor []`
- `bool bActive [Used to calculate ContainerElementOffsets]`
- `bool bOverrideColor []`


**方法**:

- `FEFitDataflowNode& opAssign(FEFitDataflowNode Other)`

---

