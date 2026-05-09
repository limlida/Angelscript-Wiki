### FSwarmTaskRequestSpecificationMessage


**属性**:

- `uint Cost [The Task's cost, relative to all other Tasks in the same Job, used for even distribution and scheduling]`
- `TArray<FString> Dependencies [Any additional Task dependencies]`
- `uint8 Flags [Flags used to control the behavior of the Task, subject to overrides from the containing Job]`
- `FString Parameters [The Task's parameter string specified with AddTask]`
- `FGuid TaskGuid [The GUID used for identifying the Task being referred to]`


**方法**:

- `FSwarmTaskRequestSpecificationMessage& opAssign(FSwarmTaskRequestSpecificationMessage Other)`

---

