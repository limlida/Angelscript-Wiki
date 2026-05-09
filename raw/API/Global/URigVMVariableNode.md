### URigVMVariableNode


The Variable Node represents a mutable value / local state within the
the Function / Graph. Variable Node's can be a getter or a setter.
Getters are pure nodes with just an output value pin, while setters
are mutable nodes with an execute and input value pin.

**方法**:

- `FString GetCPPType() const`  
  Returns the C++ data type of the variable
- `UObject GetCPPTypeObject() const`  
  Returns the C++ data type struct of the variable (or nullptr)
- `FString GetDefaultValue() const`  
  Returns the default value of the variable as a string
- `FRigVMGraphVariableDescription GetVariableDescription() const`  
  Returns this variable node's variable description
- `FName GetVariableName() const`  
  Returns the name of the variable
- `bool IsExternalVariable() const`  
  Returns true if this variable is an external variable
- `bool IsGetter() const`  
  Returns true if this node is a variable getter
- `bool IsInputArgument() const`  
  Returns true if this variable is an input argument
- `bool IsLocalVariable() const`  
  Returns true if this variable is a local variable

---

