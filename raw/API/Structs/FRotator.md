### FRotator


**属性**:

- `float Pitch`
- `float Roll`
- `float Yaw`


**方法**:

- `FRotator& opAssign(FRotator Other)`
- `FRotator opAdd(FRotator R) const`
- `FRotator opAddAssign(FRotator R)`
- `FRotator opSub(FRotator R) const`
- `FRotator opSubAssign(FRotator R)`
- `FRotator opMul(float Scale) const`
- `FRotator opMulAssign(float Scale)`
- `bool opEquals(FRotator R) const`
- `bool IsNearlyZero(float Tolerance = KINDA_SMALL_NUMBER) const`
- `bool IsZero() const`
- `bool Equals(FRotator R, float Tolerance = KINDA_SMALL_NUMBER) const`
- `FRotator GetInverse() const`
- `FRotator Clamp() const`
- `FRotator GetNormalized() const`
- `FRotator GetDenormalized() const`
- `GetWindingAndRemainder(FRotator& Winding, FRotator& Remainder) const`
- `float GetManhattanDistance(FRotator Rotator) const`
- `Normalize()`
- `bool ContainsNaN() const`
- `FVector Vector() const`
- `FQuat Quaternion() const`
- `FVector Euler() const`
- `FVector RotateVector(FVector V) const`
- `FVector UnrotateVector(FVector V) const`
- `FString ToColorString() const`
- `bool InitFromString(FString SourceString)`
- `FString ToString() const`
- `float AngularDistance(FRotator B) const`  
  Get the angle in degrees between two rotators
- `FRotator Compose(FRotator B) const`
- `FVector GetForwardVector() const`
- `FVector GetRightVector() const`
- `FVector GetUpVector() const`

---

