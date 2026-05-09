### URigVMLibraryNode


The Library Node represents a function invocation of a
function specified somewhere else. The function can be
expressed as a sub-graph (RigVMGroupNode) or as a
referenced function (RigVMFunctionNode).

**方法**:

- `URigVMGraph GetContainedGraph() const`
- `FRigVMVariant GetFunctionVariant() const`
- `FRigVMVariantRef GetFunctionVariantRef() const`
- `URigVMFunctionLibrary GetLibrary() const`
- `TArray<FRigVMVariantRef> GetMatchingVariants() const`

---

