### UMovieSceneParameterSection


A single movie scene section which can contain data for multiple named parameters.

**方法**:

- `AddBoolParameterKey(FName InParameterName, FFrameNumber InTime, bool InValue)`  
  Adds a a key for a specific bool parameter at the specified time with the specified value.
- `AddColorParameterKey(FName InParameterName, FFrameNumber InTime, FLinearColor InValue, EMovieSceneKeyInterpolation DefaultInterpolation = EMovieSceneKeyInterpolation :: Auto)`  
  Adds a a key for a specific color parameter at the specified time with the specified value.
- `AddScalarParameterKey(FName InParameterName, FFrameNumber InTime, float32 InValue, EMovieSceneKeyInterpolation DefaultInterpolation = EMovieSceneKeyInterpolation :: Auto)`  
  Adds a a key for a specific scalar parameter at the specified time with the specified value.
- `AddTransformParameterKey(FName InParameterName, FFrameNumber InTime, FTransform InValue, EMovieSceneKeyInterpolation DefaultInterpolation = EMovieSceneKeyInterpolation :: Auto)`  
  Adds a a key for a specific color parameter at the specified time with the specified value.
- `AddVector2DParameterKey(FName InParameterName, FFrameNumber InTime, FVector2D InValue, EMovieSceneKeyInterpolation DefaultInterpolation = EMovieSceneKeyInterpolation :: Auto)`  
  Adds a a key for a specific vector2D parameter at the specified time with the specified value.
- `AddVectorParameterKey(FName InParameterName, FFrameNumber InTime, FVector InValue, EMovieSceneKeyInterpolation DefaultInterpolation = EMovieSceneKeyInterpolation :: Auto)`  
  Adds a a key for a specific vector parameter at the specified time with the specified value.
- `GetParameterNames(TSet<FName>& ParameterNames) const`  
  Gets the set of all parameter names used by this section.
- `bool RemoveBoolParameter(FName InParameterName)`  
  Removes a bool parameter from this section.

@param InParameterName The name of the bool parameter to remove.
@returns True if a parameter with that name was found and removed, otherwise false.
- `bool RemoveColorParameter(FName InParameterName)`  
  Removes a color parameter from this section.

@param InParameterName The name of the color parameter to remove.
@returns True if a parameter with that name was found and removed, otherwise false.
- `bool RemoveScalarParameter(FName InParameterName)`  
  Removes a scalar parameter from this section.

@param InParameterName The name of the scalar parameter to remove.
@returns True if a parameter with that name was found and removed, otherwise false.
- `bool RemoveTransformParameter(FName InParameterName)`  
  Removes a transform parameter from this section.

@param InParameterName The name of the transform parameter to remove.
@returns True if a parameter with that name was found and removed, otherwise false.
- `bool RemoveVector2DParameter(FName InParameterName)`  
  Removes a vector2D parameter from this section.

@param InParameterName The name of the vector2D parameter to remove.
@returns True if a parameter with that name was found and removed, otherwise false.
- `bool RemoveVectorParameter(FName InParameterName)`  
  Removes a vector parameter from this section.

@param InParameterName The name of the vector parameter to remove.
@returns True if a parameter with that name was found and removed, otherwise false.

---

