### FFloatArrayToIntArrayDataflowNode


Converts a Float array to Int array using the specified method.

**属性**:

- `TArray<float32> FloatArray [Float array value to convert]`
- `EFloatArrayToIntArrayFunctionEnum Function [Conversion method:
Floor takes the floor of each input float value - 1.1 turns into 1.
Ceil takes the ceil - 1.1 turns into 2.
Round rounds to the nearest integer - 1.1 turns into 1.
Tuncate trucates like a type cast - 1.1 turns into 1.
Non-zero to Index appends the index of all non-zero values to the output array.
Zero to Index appends the index of all zero values to the output array.]`
- `FLinearColor OverrideColor []`
- `bool bActive [Used to calculate ContainerElementOffsets]`
- `bool bOverrideColor []`


**方法**:

- `FFloatArrayToIntArrayDataflowNode& opAssign(FFloatArrayToIntArrayDataflowNode Other)`

---

