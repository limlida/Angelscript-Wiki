### FVector2D


**属性**:

- `float X`
- `float Y`


**方法**:

- `FVector2D& opAssign(FVector2D Other)`
- `FVector2D opAdd(FVector2D Other) const`
- `FVector2D opSub(FVector2D Other) const`
- `FVector2D opMul(FVector2D Other) const`
- `FVector2D opDiv(FVector2D Other) const`
- `FVector2D opMul(float Scale) const`
- `FVector2D opDiv(float Scale) const`
- `FVector2D opAdd(float Bias) const`
- `FVector2D opSub(float Bias) const`
- `FVector2D opNeg() const`
- `FVector2D opMulAssign(float Scale)`
- `FVector2D opDivAssign(float Scale)`
- `FVector2D opMulAssign(FVector2D Other)`
- `FVector2D opDivAssign(FVector2D Other)`
- `FVector2D opAddAssign(FVector2D Other)`
- `FVector2D opSubAssign(FVector2D Other)`
- `float& opIndex(int Index)`
- `float opIndex(int Index) const`
- `bool opEquals(FVector2D Other) const`
- `bool Equals(FVector2D Other, float Tolerance = KINDA_SMALL_NUMBER) const`
- `float CrossProduct(FVector2D Other) const`
- `float DotProduct(FVector2D Other) const`
- `float GetMax() const`
- `float GetAbsMax() const`
- `float GetMin() const`
- `FVector2D GetAbs() const`
- `float Size() const`
- `float SizeSquared() const`
- `bool IsNearlyZero(float Tolerance = KINDA_SMALL_NUMBER) const`
- `bool IsZero() const`
- `Normalize(float Tolerance = SMALL_NUMBER)`
- `FVector2D GetSafeNormal(float Tolerance = SMALL_NUMBER) const`
- `ToDirectionAndLength(FVector2D& OutDir, float& OutLength) const`
- `ToDirectionAndLength(FVector2D& OutDir, float32& OutLength) const`
- `bool ContainsNaN() const`
- `FVector2D GetSignVector() const`
- `float Distance(FVector2D Other) const`
- `float DistSquared(FVector2D Other) const`
- `FVector2D GetClampedToMaxSize(float Max) const`
- `bool InitFromString(FString SourceString)`
- `FString ToString() const`

---

