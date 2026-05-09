### FFieldMakeDenseFloatArrayDataflowNode


Converts a sparse FloatArray (a selected subset of the whole incoming array) into a dense FloatArray
(same number of elements as the incoming array using NumSamplePositions) using the Remap input
NumSamplePositions controls the size of the output array, only indices smaller than l to than NumSamplePositions
will be processed

**属性**:

- `float32 Default []`
- `int NumSamplePositions []`
- `FLinearColor OverrideColor []`
- `bool bActive [Used to calculate ContainerElementOffsets]`
- `bool bOverrideColor []`


**方法**:

- `FFieldMakeDenseFloatArrayDataflowNode& opAssign(FFieldMakeDenseFloatArrayDataflowNode Other)`

---

