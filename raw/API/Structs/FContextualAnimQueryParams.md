### FContextualAnimQueryParams


Stores the parameters passed into query function
@TODO: Only used by UContextualAnimSceneAsset::Query. Kept around only to do not break existing content. It will go away in the future.

**属性**:

- `TWeakObjectPtr<const AActor> Querier`
- `FTransform QueryTransform`
- `bool bComplexQuery`
- `bool bFindAnimStartTime`


**方法**:

- `FContextualAnimQueryParams& opAssign(FContextualAnimQueryParams Other)`

---

