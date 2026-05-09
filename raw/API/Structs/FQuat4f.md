### FQuat4f


**属性**:

- `float32 W`
- `float32 X`
- `float32 Y`
- `float32 Z`


**方法**:

- `FQuat4f& opAssign(FQuat4f Other)`
- `FQuat4f opAdd(FQuat4f Other) const`
- `FQuat4f opSub(FQuat4f Other) const`
- `FQuat4f opAddAssign(FQuat4f Other)`
- `FQuat4f opSubAssign(FQuat4f Other)`
- `bool opEquals(FQuat4f Other) const`
- `bool Equals(FQuat4f Other, float32 Tolerance = KINDA_SMALL_NUMBER) const`
- `bool IsIdentity(float32 Tolerance = SMALL_NUMBER) const`
- `FQuat4f opMul(FQuat4f Other) const`
- `FQuat4f opMulAssign(FQuat4f Other)`
- `FQuat4f opMul(float32 Scale) const`
- `FQuat4f opMulAssign(float32 Scale)`
- `FQuat4f opDiv(float32 Scale) const`
- `FQuat4f opDivAssign(float32 Scale)`
- `Normalize(float32 Tolerance = SMALL_NUMBER)`
- `FQuat4f GetNormalized(float32 Tolerance = SMALL_NUMBER) const`
- `bool IsNormalized() const`
- `float32 Size() const`
- `float32 SizeSquared() const`
- `float32 GetAngle() const`
- `FQuat4f Log() const`
- `FQuat4f Exp() const`
- `FQuat4f Inverse() const`
- `float32 AngularDistance(FQuat4f Q) const`
- `bool ContainsNaN() const`
- `EnforceShortestArcWith(FQuat4f Other)`
- `ToAxisAndAngle(FVector3f& Axis, float32& Angle) const`
- `FVector3f opMul(FVector3f Other) const`
- `FVector3f Euler() const`
- `FVector3f RotateVector(FVector3f V) const`
- `FVector3f UnrotateVector(FVector3f V) const`
- `FVector3f GetAxisX() const`
- `FVector3f GetAxisY() const`
- `FVector3f GetAxisZ() const`
- `FVector3f GetForwardVector() const`
- `FVector3f GetRightVector() const`
- `FVector3f GetUpVector() const`
- `FVector3f Vector() const`
- `FVector3f GetRotationAxis() const`
- `FRotator3f Rotator() const`
- `ToSwingTwist(FVector3f InTwistAxis, FQuat4f& OutSwing, FQuat4f& OutTwist) const`
- `float32 GetTwistAngle(FVector3f InTwistAxis) const`
- `bool InitFromString(FString SourceString)`
- `FString ToString() const`

---

