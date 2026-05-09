### FMoverDataPersistence


Info about data collection types that should always be present, and how they should propagate from one frame to the next

**属性**:

- `UScriptStruct RequiredType [The type that should propagate between frames]`
- `bool bCopyFromPriorFrame [If true, values will be copied from the prior frame. Otherwise, they will be default-initialized.]`


**方法**:

- `FMoverDataPersistence& opAssign(FMoverDataPersistence Other)`

---

