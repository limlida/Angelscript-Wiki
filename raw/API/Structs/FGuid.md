### FGuid


A globally unique identifier (mirrored from Engine/Source/Runtime/Core/Public/Misc/Guid.h)

**属性**:

- `int A []`
- `int B []`
- `int C []`
- `int D []`


**方法**:

- `bool opEquals(FGuid Other) const`
- `int opCmp(FGuid Other) const`
- `uint& opIndex(int Index)`
- `uint opIndex(int Index) const`
- `Invalidate()`
- `bool IsValid() const`
- `FString ToString(EGuidFormats Format) const`
- `uint GetTypeHash() const`
- `FString ToString() const`  
  Converts a GUID value to a string, in the form 'A-B-C-D'
- `FGuid& opAssign(FGuid Other)`

---

