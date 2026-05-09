### FMovieSceneConditionContext


* Blueprint-friendly struct containing any context needed to evaluate conditions.

**属性**:

- `FMovieSceneBindingProxy Binding [Binding for the bound object currently evaluating this condition if applicable (BindingId will be invalid for conditions on global tracks/sections).]`
- `TArray<TObjectPtr<UObject>> BoundObjects [Array of objects bound to the binding currently evaluating this condition if applicable (will be empty for conditions on global tracks/sections)]`
- `UObject WorldContext [The world context]`


**方法**:

- `FMovieSceneConditionContext& opAssign(FMovieSceneConditionContext Other)`

---

