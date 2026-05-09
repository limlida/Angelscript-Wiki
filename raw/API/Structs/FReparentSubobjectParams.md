### FReparentSubobjectParams


Options for reparenting subobjects

**属性**:

- `AActor ActorPreviewContext [The preview actor context to be used if in a blueprint context.
This must have a value if BlueprintContext is needed.]`
- `UBlueprint BlueprintContext [Pointer to the blueprint context that this subobject is in. If this is null, it is assumed that
this subobject is being added to an instance.]`
- `FSubobjectDataHandle NewParentHandle [The handle of the subobject to reparent to.]`


**方法**:

- `FReparentSubobjectParams& opAssign(FReparentSubobjectParams Other)`

---

