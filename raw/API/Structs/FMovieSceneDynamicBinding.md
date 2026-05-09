### FMovieSceneDynamicBinding


Data for a dynamic binding endpoint call.

**属性**:

- `TMap<FName,FMovieSceneDynamicBindingPayloadVariable> PayloadVariables [Array of payload variables to be added to the generated function]`
- `FName ResolveParamsPinName [Pin name for passing the resolve params]`
- `TWeakObjectPtr<UObject> WeakEndpoint [Endpoint node in the sequence director]`


**方法**:

- `FMovieSceneDynamicBinding& opAssign(FMovieSceneDynamicBinding Other)`

---

