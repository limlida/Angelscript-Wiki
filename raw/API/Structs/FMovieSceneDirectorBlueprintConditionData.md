### FMovieSceneDirectorBlueprintConditionData


Data for a director blueprint condition endpoint call.

**属性**:

- `FName ConditionContextPinName [Pin name for passing the condition context params]`
- `TMap<FName,FMovieSceneDirectorBlueprintConditionPayloadVariable> PayloadVariables [Array of payload variables to be added to the generated function]`
- `TWeakObjectPtr<UObject> WeakEndpoint [Endpoint node in the sequence director]`


**方法**:

- `FMovieSceneDirectorBlueprintConditionData& opAssign(FMovieSceneDirectorBlueprintConditionData Other)`

---

