### FInterchangeTestFunction


**属性**:

- `TSubclassOf<UObject> AssetClass [Type of the asset being tested]`
- `UFunction CheckFunction [A function to be called to determine whether the result is correct]`
- `FString OptionalAssetName [Optional name of the asset to test, if there are various contenders]`
- `TMap<FName,FString> Parameters [Parameters and their bound values as text]`


**方法**:

- `FInterchangeTestFunction& opAssign(FInterchangeTestFunction Other)`

---

