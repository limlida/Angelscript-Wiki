### FRigVMGraphParameterDescription


The parameter description is used to convey information
about unique parameters within a Graph. Multiple Parameter
Nodes can share the same parameter description.

**属性**:

- `FString CPPType [The C++ data type of the parameter]`
- `UObject CPPTypeObject [The Struct of the C++ data type of the parameter (or nullptr)]`
- `FString DefaultValue [The default value of the parameter]`
- `FName Name [The name of the parameter]`
- `bool bIsInput [True if the parameter is an input]`


**方法**:

- `FRigVMGraphParameterDescription& opAssign(FRigVMGraphParameterDescription Other)`

---

