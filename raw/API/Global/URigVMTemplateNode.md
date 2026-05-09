### URigVMTemplateNode


The Template Node represents an unresolved function.
Template nodes can morph into all functions implementing
the template's template.

**方法**:

- `FName GetNotation() const`  
  Returns the notation of the node
- `UScriptStruct GetScriptStruct() const`  
  Returns the UStruct for this unit node
(the struct declaring the RIGVM_METHOD)
- `bool IsFullyUnresolved() const`  
  returns true if the template is fully unresolved
- `bool IsResolved() const`  
  returns true if the template node is resolved
- `bool IsSingleton() const`

---

