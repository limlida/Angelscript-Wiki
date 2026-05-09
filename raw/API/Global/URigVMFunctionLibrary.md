### URigVMFunctionLibrary


The Function Library is a graph used only to store
the sub graphs used for functions.

**方法**:

- `URigVMLibraryNode FindFunction(FName InFunctionName) const`  
  Finds a function by name
- `URigVMLibraryNode FindFunctionForNode(URigVMNode InNode) const`  
  Finds a function by a node within a function (or a sub graph of that)
- `TArray<URigVMLibraryNode> GetFunctions() const`  
  Returns all of the stored functions
- `TArray<FString> GetReferencePathsForFunction(FName InFunctionName)`  
  Returns all references for a given function name
- `TArray<TSoftObjectPtr<URigVMFunctionReferenceNode>> GetReferencesForFunction(FName InFunctionName)`  
  Returns all references for a given function name

---

