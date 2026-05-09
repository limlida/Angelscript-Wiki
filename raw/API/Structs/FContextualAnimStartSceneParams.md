### FContextualAnimStartSceneParams


DEPRECATED: Kept around only to do not break existing content. It will go away in the future.

**属性**:

- `int AnimSetIdx [Desired set. If INDEX_NONE the Manager will attempt to find the best set to use by running the selection criteria.
The selection will be performed in the section specified by SectionIdx or in the first section if SectionIdx == INDEX_NONE.]`
- `TMap<FName,FContextualAnimSceneBindingContext> RoleToActorMap [Map with actors to bind to each role in the scene]`
- `int SectionIdx [Desired section. If INDEX_NONE the Manager will use or find best set in the first section.]`


**方法**:

- `FContextualAnimStartSceneParams& opAssign(FContextualAnimStartSceneParams Other)`

---

