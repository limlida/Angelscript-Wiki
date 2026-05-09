### FMovieSceneEvent


**属性**:

- `FName BoundObjectPinName []`
- `TMap<FName,FMovieSceneEventPayloadVariable> PayloadVariables [Array of payload variables to be added to the generated function]`
- `TWeakObjectPtr<UObject> WeakEndpoint [Serialized weak pointer to the function entry (UK2Node_FunctionEntry) or custom event node (UK2Node_CustomEvent) within the blueprint graph for this event. Stored as an editor-only UObject so UHT can parse it when building for non-editor.]`


**方法**:

- `UClass GetBoundObjectPropertyClass() const`  
  * Return the class of the bound object property
*
* @param EventKey    The event key to get the bound object property from
* @return The class of the bound object property
- `FMovieSceneEvent& opAssign(FMovieSceneEvent Other)`

---

