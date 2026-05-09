### FLinearColor


**属性**:

- `float32 A`
- `float32 B`
- `float32 G`
- `float32 R`


**方法**:

- `FLinearColor& opAssign(FLinearColor Other)`
- `FLinearColor opAdd(FLinearColor ColorB) const`
- `FLinearColor opAddAssign(FLinearColor ColorB)`
- `FLinearColor opSub(FLinearColor ColorB) const`
- `FLinearColor opSubAssign(FLinearColor ColorB)`
- `FLinearColor opMul(FLinearColor ColorB) const`
- `FLinearColor opMulAssign(FLinearColor ColorB)`
- `FLinearColor opMul(float32 Scalar) const`
- `FLinearColor opMulAssign(float32 Scalar)`
- `FLinearColor opDiv(FLinearColor ColorB) const`
- `FLinearColor opDivAssign(FLinearColor ColorB)`
- `FLinearColor opDiv(float32 Scalar) const`
- `FLinearColor opDivAssign(float32 Scalar)`
- `bool opEquals(FLinearColor ColorB) const`
- `FLinearColor GetClamped(float32 InMin = 0.f, float32 InMax = 1.f) const`
- `bool Equals(FLinearColor ColorB, float32 Tolerance = KINDA_SMALL_NUMBER) const`
- `bool IsAlmostBlack() const`
- `float32 GetMin() const`
- `float32 GetMax() const`
- `float32 GetLuminance() const`
- `FLinearColor LinearRGBToHSV() const`
- `FLinearColor HSVToLinearRGB() const`
- `FColor ToFColor(bool bSRGB) const`
- `FString ToString() const`

---

