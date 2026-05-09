### FRigVMFunction_TimeOffsetTransform


Records a value over time and can access the value from the past

**属性**:

- `int BufferSize [The sampling precision of the buffer. The higher the more precise - the more memory usage.]`
- `FTransform Result []`
- `float32 SecondsAgo [Seconds of time in the past you want to query the value for]`
- `float32 TimeRange [The maximum time required for offsetting in seconds.]`
- `FTransform Value [The value to record]`


**方法**:

- `FRigVMFunction_TimeOffsetTransform& opAssign(FRigVMFunction_TimeOffsetTransform Other)`

---

