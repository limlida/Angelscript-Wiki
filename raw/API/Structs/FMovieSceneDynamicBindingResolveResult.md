### FMovieSceneDynamicBindingResolveResult


**属性**:

- `TArray<TObjectPtr<UObject>> Objects [The resolved objects]`
- `bool bIsPossessedObject [Whether the resolved object is external to the sequence

This property is ignored for possessables, who are always treated as external.
When resolving a spawnable, setting this to true will not destroy the object
when the spawnable track ends, or the sequence finishes.]`


**方法**:

- `FMovieSceneDynamicBindingResolveResult& opAssign(FMovieSceneDynamicBindingResolveResult Other)`

---

