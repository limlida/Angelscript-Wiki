### FQuat


**属性**:

- `float W`
- `float X`
- `float Y`
- `float Z`


**方法**:

- `FQuat& opAssign(FQuat Other)`
- `FQuat opAdd(FQuat Other) const`
- `FQuat opSub(FQuat Other) const`
- `FQuat opAddAssign(FQuat Other)`
- `FQuat opSubAssign(FQuat Other)`
- `bool opEquals(FQuat Other) const`
- `bool Equals(FQuat Other, float Tolerance = KINDA_SMALL_NUMBER) const`
- `bool IsIdentity(float Tolerance = SMALL_NUMBER) const`
- `FQuat opMul(FQuat Other) const`
- `FQuat opMulAssign(FQuat Other)`
- `FQuat opMul(float Scale) const`
- `FQuat opMulAssign(float Scale)`
- `FQuat opDiv(float Scale) const`
- `FQuat opDivAssign(float Scale)`
- `Normalize(float Tolerance = SMALL_NUMBER)`
- `FQuat GetNormalized(float Tolerance = SMALL_NUMBER) const`
- `bool IsNormalized() const`
- `float Size() const`
- `float SizeSquared() const`
- `float GetAngle() const`
- `FQuat Log() const`
- `FQuat Exp() const`
- `FQuat Inverse() const`
- `float AngularDistance(FQuat Q) const`
- `bool ContainsNaN() const`
- `EnforceShortestArcWith(FQuat Other)`
- `ToAxisAndAngle(FVector& Axis, float32& Angle) const`
- `ToAxisAndAngle(FVector& Axis, float& Angle) const`
- `FVector opMul(FVector Other) const`
- `FVector Euler() const`
- `FVector RotateVector(FVector V) const`
- `FVector UnrotateVector(FVector V) const`
- `FVector GetAxisX() const`
- `FVector GetAxisY() const`
- `FVector GetAxisZ() const`
- `FVector GetForwardVector() const`
- `FVector GetRightVector() const`
- `FVector GetUpVector() const`
- `FVector Vector() const`
- `FVector GetRotationAxis() const`
- `FRotator Rotator() const`
- `ToSwingTwist(FVector InTwistAxis, FQuat& OutSwing, FQuat& OutTwist) const`
- `float GetTwistAngle(FVector InTwistAxis) const`
- `bool InitFromString(FString SourceString)`
- `FString ToString() const`

---

