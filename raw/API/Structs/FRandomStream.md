### FRandomStream


**方法**:

- `Initialize(int InSeed)`
- `Initialize(uint InSeed)`
- `Reset() const`
- `int GetInitialSeed() const`
- `GenerateNewSeed()`
- `float32 GetFraction() const`
- `uint GetUnsignedInt() const`
- `int GetCurrentSeed() const`
- `int RandRange(int Min, int Max) const`
- `float RandRange(float Min, float Max) const`
- `FRandomStream& opAssign(FRandomStream Other)`
- `Initialize(FName InName)`
- `FVector GetUnitVector() const`
- `FVector VRand() const`
- `FVector VRandCone(FVector Dir, float32 ConeHalfAngleRad) const`
- `FVector VRandCone(FVector Dir, float32 HorizontalConeHalfAngleRad, float32 VerticalConeHalfAngleRad) const`
- `FString ToString() const`

---

