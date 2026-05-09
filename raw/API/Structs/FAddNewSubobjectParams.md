### FAddNewSubobjectParams


Options when adding a new subobject

**属性**:

- `UBlueprint BlueprintContext [Pointer to the blueprint context that this subobject is in. If this is null, it is assumed that
this subobject is being added to an instance.]`
- `UClass NewClass [The class of the new subobject that will be added]`
- `FSubobjectDataHandle ParentHandle []`
- `bool bConformTransformToParent [Whether the newly created component should keep its transform, or conform it to its parent]`
- `bool bSkipMarkBlueprintModified [Optionally skip marking this blueprint as modified (e.g. if we're handling that externally]`


**方法**:

- `FAddNewSubobjectParams& opAssign(FAddNewSubobjectParams Other)`

---

