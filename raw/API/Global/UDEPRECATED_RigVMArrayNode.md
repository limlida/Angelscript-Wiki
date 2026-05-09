### UDEPRECATED_RigVMArrayNode


The Array Node represents one of a series available
array operations such as SetNum, GetAtIndex etc.

**方法**:

- `FString GetCPPType() const`  
  Returns the C++ data type of the element
- `UObject GetCPPTypeObject() const`  
  Returns the C++ data type struct of the array (or nullptr)
- `ERigVMOpCode GetOpCode() const`  
  Returns the op code of this node

---

