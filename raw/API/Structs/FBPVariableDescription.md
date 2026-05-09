### FBPVariableDescription


Struct indicating a variable in the generated class

**属性**:

- `FText Category [Category this variable should be in]`
- `FString DefaultValue [Optional new default value stored as string]`
- `FString FriendlyName [Friendly name of the variable]`
- `TArray<FBPVariableMetaDataEntry> MetaDataArray [Metadata information for this variable]`
- `uint64 PropertyFlags [Property flags for this variable - Changed from int32 to uint64]`
- `FName RepNotifyFunc []`
- `ELifetimeCondition ReplicationCondition []`
- `FName VarName [Name of the variable]`
- `FEdGraphPinType VarType [Type of the variable]`


**方法**:

- `FBPVariableDescription& opAssign(FBPVariableDescription Other)`

---

