### FRigVMGraphVariableDescription


The variable description is used to convey information
about unique variables within a Graph. Multiple Variable
Nodes can share the same variable description.

**属性**:

- `FString CPPType [The C++ data type of the variable]`
- `UObject CPPTypeObject [The Struct of the C++ data type of the variable (or nullptr)]`
- `FText Category [The category of the variable]`
- `FString DefaultValue [The default value of the variable]`
- `FName Name [The name of the variable]`
- `FText Tooltip [The tooltip of the variable]`
- `bool bExposeToCinematics [Should this variable be exposed on spawn]`
- `bool bExposedOnSpawn [Should this variable be exposed on spawn]`
- `bool bPrivate [Is this variable private]`
- `bool bPublic [Is this variable public]`


**方法**:

- `FRigVMGraphVariableDescription& opAssign(FRigVMGraphVariableDescription Other)`

---

