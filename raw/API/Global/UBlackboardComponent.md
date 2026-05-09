### UBlackboardComponent


**属性**:

- `UBlackboardData DefaultBlackboardAsset [data asset defining entries. Will be used as part of InitializeComponent
    call provided BlackboardAsset hasn't been already set (via a InitializeBlackboard
    call).]`


**方法**:

- `ClearValue(FName KeyName)`
- `bool GetLocationFromEntry(FName KeyName, FVector& ResultLocation) const`  
  return false if call failed (most probably no such entry in BB)
- `bool GetRotationFromEntry(FName KeyName, FRotator& ResultRotation) const`  
  return false if call failed (most probably no such entry in BB)
- `bool GetValueAsBool(FName KeyName) const`
- `UClass GetValueAsClass(FName KeyName) const`
- `uint8 GetValueAsEnum(FName KeyName) const`
- `float32 GetValueAsFloat(FName KeyName) const`
- `int GetValueAsInt(FName KeyName) const`
- `FName GetValueAsName(FName KeyName) const`
- `UObject GetValueAsObject(FName KeyName) const`
- `FRotator GetValueAsRotator(FName KeyName) const`
- `FString GetValueAsString(FName KeyName) const`
- `FVector GetValueAsVector(FName KeyName) const`
- `bool IsVectorValueSet(FName KeyName) const`  
  If the vector value has been set (and not cleared), this function returns true (indicating that the value should be valid).  If it's not set, the vector value is invalid and this function will return false.  (Also returns false if the key specified does not hold a vector.)
- `SetValueAsBool(FName KeyName, bool BoolValue)`
- `SetValueAsClass(FName KeyName, UClass ClassValue)`
- `SetValueAsEnum(FName KeyName, uint8 EnumValue)`
- `SetValueAsFloat(FName KeyName, float32 FloatValue)`
- `SetValueAsInt(FName KeyName, int IntValue)`
- `SetValueAsName(FName KeyName, FName NameValue)`
- `SetValueAsObject(FName KeyName, UObject ObjectValue)`
- `SetValueAsRotator(FName KeyName, FRotator VectorValue)`
- `SetValueAsString(FName KeyName, FString StringValue)`
- `SetValueAsVector(FName KeyName, FVector VectorValue)`

---

