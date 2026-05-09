### FTransform3f


**方法**:

- `FTransform3f& opAssign(FTransform3f Other)`
- `FTransform3f Inverse() const`
- `Blend(FTransform3f Atom1, FTransform3f Atom2, float32 Alpha)`
- `BlendWith(FTransform3f OtherAtom, float32 Alpha)`
- `FTransform3f opMul(FTransform3f Other) const`
- `FTransform3f opMul(FQuat4f Other) const`
- `opMulAssign(FTransform3f Other)`
- `opMulAssign(FQuat4f Other)`
- `ScaleTranslation(FVector3f InScale3D)`
- `ScaleTranslation(float32 Scale)`
- `RemoveScaling(float32 Tolerance = __SMALL_NUMBER_flt)`
- `SetToRelativeTransform(FTransform3f Other)`
- `Accumulate(FTransform3f SourceAtom)`  
  Accumulates another transform with this one
Rotation is accumulated multiplicatively (Rotation = SourceAtom.Rotation * Rotation)
Translation is accumulated additively (Translation += SourceAtom.Translation)
Scale3D is accumulated multiplicatively (Scale3D *= SourceAtom.Scale3D)
@param SourceAtom The other transform to accumulate into this one
- `float32 GetMaximumAxisScale() const`
- `float32 GetMinimumAxisScale() const`
- `FTransform3f GetRelativeTransform(FTransform3f Other) const`
- `FTransform3f GetRelativeTransformReverse(FTransform3f Other) const`
- `FVector3f TransformPosition(FVector3f V) const`
- `FVector3f TransformPositionNoScale(FVector3f V) const`
- `FVector3f InverseTransformPosition(FVector3f V) const`
- `FVector3f InverseTransformPositionNoScale(FVector3f V) const`
- `FVector3f TransformVector(FVector3f V) const`
- `FVector3f TransformVectorNoScale(FVector3f V) const`
- `FVector3f InverseTransformVector(FVector3f V) const`
- `FVector3f InverseTransformVectorNoScale(FVector3f V) const`
- `FQuat4f TransformRotation(FQuat4f Q) const`
- `FQuat4f InverseTransformRotation(FQuat4f Q) const`
- `FVector3f SubtractTranslations(FTransform3f B) const`
- `NormalizeRotation()`
- `bool IsRotationNormalized() const`
- `bool TranslationEquals(FTransform3f Other, float32 Tolerance = __KINDA_SMALL_NUMBER_flt) const`
- `bool EqualsNoScale(FTransform3f Other, float32 Tolerance = __KINDA_SMALL_NUMBER_flt) const`
- `bool Equals(FTransform3f Other, float32 Tolerance = __KINDA_SMALL_NUMBER_flt) const`
- `FVector3f GetLocation() const`
- `bool ContainsNaN() const`
- `bool IsValid() const`
- `float32 GetDeterminant() const`
- `FRotator3f Rotator() const`
- `FVector3f GetTranslation() const`
- `FVector3f GetScale3D() const`
- `FQuat4f GetRotation() const`
- `SetLocation(FVector3f Origin)`
- `SetTranslation(FVector3f Origin)`
- `AddToTranslation(FVector3f Origin)`
- `ConcatenateRotation(FQuat4f DeltaRotation)`  
  Concatenates another rotation to this transformation
@param DeltaRotation The rotation to concatenate in the following fashion: Rotation = Rotation * DeltaRotation
- `SetRotation(FQuat4f NewRotation)`
- `SetScale3D(FVector3f NewScale3D)`
- `SetTranslationAndScale3D(FVector3f NewTranslation, FVector3f NewScale3D)`
- `bool InitFromString(FString SourceString)`
- `FString ToString() const`
- `FRotator3f InverseTransformRotation(FRotator3f R) const`
- `SetRotation(FRotator3f NewRotation)`
- `FRotator3f TransformRotation(FRotator3f R) const`

---

