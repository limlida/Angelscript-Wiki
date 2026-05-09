### FControlRigComponentMappedElement


**属性**:

- `FSoftComponentReference ComponentReference [The component to map to the Control Rig]`
- `EControlRigComponentMapDirection Direction [The direction (input / output) to be used for mapping an element]`
- `FName ElementName [The name of the element to map to]`
- `ERigElementType ElementType [The type of element this is mapped to]`
- `FTransform Offset [The offset transform to apply]`
- `EControlRigComponentSpace Space [space in which the mapping happens]`
- `int TransformIndex [An optional index that can be used with components
with multiple transforms (for example the InstancedStaticMeshComponent)]`
- `FName TransformName [An optional name that can be used with components
that have sockets (for example the SkeletalMeshComponent)]`
- `float32 Weight [defines how much the mapped element should be driven]`


**方法**:

- `FControlRigComponentMappedElement& opAssign(FControlRigComponentMappedElement Other)`

---

