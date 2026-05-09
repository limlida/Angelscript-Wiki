### FContextualAnimQueryResult


Stores the result of a query function
@TODO: Only used by UContextualAnimSceneAsset::Query. Kept around only to do not break existing content. It will go away in the future.

**属性**:

- `int AnimSetIdx []`
- `float32 AnimStartTime []`
- `TWeakObjectPtr<UAnimMontage> Animation []`
- `FTransform EntryTransform []`
- `FTransform SyncTransform []`


**方法**:

- `FContextualAnimQueryResult& opAssign(FContextualAnimQueryResult Other)`

---

