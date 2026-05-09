### UMovieSceneComponentMaterialParameterSection


A movie scene section containing data for material parameters.

**方法**:

- `AddColorParameterKey(FMaterialParameterInfo InParameterInfo, FFrameNumber InTime, FLinearColor InValue, FString InLayerName, FString InAssetName, FParameterChannelNames InChannelNames, EMovieSceneKeyInterpolation DefaultInterpolation = EMovieSceneKeyInterpolation :: Auto)`  
  Adds a a key for a specific color parameter at the specified time with the specified value.
- `AddScalarParameterKey(FMaterialParameterInfo InParameterInfo, FFrameNumber InTime, float32 InValue, FString InLayerName, FString InAssetName, EMovieSceneKeyInterpolation DefaultInterpolation = EMovieSceneKeyInterpolation :: Auto)`  
  Adds a a key for a specific scalar parameter at the specified time with the specified value.
- `bool RemoveColorParameter(FMaterialParameterInfo InParameterInfo)`  
  Removes a color parameter from this section.

@param InParameterInfo The material parameter info of the color parameter to remove.
@returns True if a parameter with that name was found and removed, otherwise false.
- `bool RemoveScalarParameter(FMaterialParameterInfo InParameterInfo)`  
  Removes a scalar parameter from this section.

@param InParameterInfo The material parameter info of the scalar parameter to remove.
@returns True if a parameter with that name was found and removed, otherwise false.

---

