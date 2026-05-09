### FFitDataflowNode


Fits a value from one range to another
Returns a number between newmin and newmax that is relative to num in the range between oldmin and oldmax.
If the value is outside the old range, it will be clamped to the new range.

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

- `FFitDataflowNode& opAssign(FFitDataflowNode Other)`

---

