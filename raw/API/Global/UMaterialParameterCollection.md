### UMaterialParameterCollection


Asset class that contains a list of parameter names and their default values.
Any number of materials can reference these parameters and get new values when the parameter values are changed.

**属性**:

- `UMaterialParameterCollection Base []`
- `TArray<FCollectionScalarParameter> ScalarParameters []`
- `TArray<FCollectionVectorParameter> VectorParameters []`


**方法**:

- `UMaterialParameterCollection GetBaseParameterCollection() const`  
  Gets the base Material Parameter Collection for this one. Returns nullptr if not set.
- `float32 GetScalarParameterDefaultValue(FName ParameterName, bool& bParameterFound) const`  
  Gets the default value of a scalar parameter from a material collection.
@param ParameterName - The name of the value to get the value of
@param bParameterFound - if a parameter with the input name was found
@returns the value of the parameter
- `TArray<FName> GetScalarParameterNames() const`  
  Returns an array of the names of all the scalar parameters in this Material Parameter Collection *
- `FLinearColor GetVectorParameterDefaultValue(FName ParameterName, bool& bParameterFound) const`  
  Gets the default value of a scalar parameter from a material collection.
@param ParameterName - The name of the value to get the value of
@param bParameterFound - if a parameter with the input name was found
@returns the value of the parameter
- `TArray<FName> GetVectorParameterNames() const`  
  Returns an array of the names of all the vector parameters in this Material Parameter Collection *

---

