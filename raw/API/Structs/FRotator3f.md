### FRotator3f


**属性**:

- `float32 Pitch`
- `float32 Roll`
- `float32 Yaw`


**方法**:

- `FRotator3f& opAssign(FRotator3f Other)`
- `FRotator3f opAdd(FRotator3f R) const`
- `FRotator3f opAddAssign(FRotator3f R)`
- `FRotator3f opSub(FRotator3f R) const`
- `FRotator3f opSubAssign(FRotator3f R)`
- `FRotator3f opMul(float32 Scale) const`
- `FRotator3f opMulAssign(float32 Scale)`
- `bool opEquals(FRotator3f R) const`
- `bool IsNearlyZero(float32 Tolerance = __KINDA_SMALL_NUMBER_flt) const`
- `bool IsZero() const`
- `bool Equals(FRotator3f R, float32 Tolerance = __KINDA_SMALL_NUMBER_flt) const`
- `FRotator3f GetInverse() const`
- `FRotator3f Clamp() const`
- `FRotator3f GetNormalized() const`
- `FRotator3f GetDenormalized() const`
- `GetWindingAndRemainder(FRotator3f& Winding, FRotator3f& Remainder) const`
- `float32 GetManhattanDistance(FRotator3f Rotator) const`
- `Normalize()`
- `bool ContainsNaN()`
- `FVector3f Vector() const`
- `FQuat4f Quaternion() const`
- `FVector3f Euler() const`
- `FVector3f RotateVector(FVector3f V) const`
- `FVector3f UnrotateVector(FVector3f V) const`
- `FString ToColorString() const`
- `bool InitFromString(FString SourceString)`
- `FString ToString() const`
- `float32 AngularDistance(FRotator3f B) const`  
  Get the angle in degrees between two rotators
- `FRotator3f Compose(FRotator3f B) const`
- `FVector3f GetForwardVector() const`
- `FVector3f GetRightVector() const`
- `FVector3f GetUpVector() const`

---

