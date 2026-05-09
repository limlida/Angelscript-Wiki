### FRigUnit_HierarchyAddSocket


Adds a new socket to the hierarchy
Note: This node only runs as part of the construction event.

**属性**:

- `FLinearColor Color [* The color of the socket]`
- `FString Description [* The (optional) description of the socket]`
- `FRigVMExecutePin ExecutePin [* This property is used to chain multiple mutable units together]`
- `FRigElementKey Item [* The resulting item]`
- `FName Name [* The name of the new element to add]`
- `FRigElementKey Parent [* The parent of the new element to add]`
- `ERigVMTransformSpace Space [Defines if the transform should be interpreted in local or global space]`
- `FTransform Transform [* The initial transform of the new element]`


**方法**:

- `FRigUnit_HierarchyAddSocket& opAssign(FRigUnit_HierarchyAddSocket Other)`

---

