### URigVMParameterNode


The Parameter Node represents an input or output argument / parameter
of the Function / Graph. Parameter Node have only a single value pin.

**方法**:

- `FString GetCPPType() const`  
  Returns the C++ data type of the parameter
- `UObject GetCPPTypeObject() const`  
  Returns the C++ data type struct of the parameter (or nullptr)
- `FString GetDefaultValue() const`  
  Returns the default value of the parameter as a string
- `FRigVMGraphParameterDescription GetParameterDescription() const`  
  Returns this parameter node's parameter description
- `FName GetParameterName() const`  
  Returns the name of the parameter
- `bool IsInput() const`  
  Returns true if this node is an input

---

