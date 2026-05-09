### FTransform


**方法**:

- `FTransform& opAssign(FTransform Other)`
- `FTransform Inverse() const`
- `Blend(FTransform Atom1, FTransform Atom2, float32 Alpha)`
- `BlendWith(FTransform OtherAtom, float32 Alpha)`
- `FTransform opMul(FTransform Other) const`
- `FTransform opMul(FQuat Other) const`
- `opMulAssign(FTransform Other)`
- `opMulAssign(FQuat Other)`
- `ScaleTranslation(FVector InScale3D)`
- `ScaleTranslation(float Scale)`
- `RemoveScaling(float Tolerance = SMALL_NUMBER)`
- `SetToRelativeTransform(FTransform Other)`
- `Accumulate(FTransform SourceAtom)`  
  Accumulates another transform with this one
Rotation is accumulated multiplicatively (Rotation = SourceAtom.Rotation * Rotation)
Translation is accumulated additively (Translation += SourceAtom.Translation)
Scale3D is accumulated multiplicatively (Scale3D *= SourceAtom.Scale3D)
@param SourceAtom The other transform to accumulate into this one
- `float32 GetMaximumAxisScale() const`
- `float32 GetMinimumAxisScale() const`
- `FTransform GetRelativeTransform(FTransform Other) const`
- `FTransform GetRelativeTransformReverse(FTransform Other) const`
- `FVector TransformPosition(FVector V) const`
- `FVector TransformPositionNoScale(FVector V) const`
- `FVector InverseTransformPosition(FVector V) const`
- `FVector InverseTransformPositionNoScale(FVector V) const`
- `FVector TransformVector(FVector V) const`
- `FVector TransformVectorNoScale(FVector V) const`
- `FVector InverseTransformVector(FVector V) const`
- `FVector InverseTransformVectorNoScale(FVector V) const`
- `FQuat TransformRotation(FQuat Q) const`
- `FQuat InverseTransformRotation(FQuat Q) const`
- `FVector SubtractTranslations(FTransform B) const`
- `NormalizeRotation()`
- `bool IsRotationNormalized() const`
- `bool TranslationEquals(FTransform Other, float Tolerance = KINDA_SMALL_NUMBER) const`
- `bool EqualsNoScale(FTransform Other, float Tolerance = KINDA_SMALL_NUMBER) const`
- `bool Equals(FTransform Other, float Tolerance = KINDA_SMALL_NUMBER) const`
- `FVector GetLocation() const`
- `bool ContainsNaN() const`
- `bool IsValid() const`
- `float GetDeterminant() const`
- `FRotator Rotator() const`
- `FVector GetTranslation() const`
- `FVector GetScale3D() const`
- `FQuat GetRotation() const`
- `FMatrix ToMatrixWithScale() const`
- `FMatrix ToMatrixNoScale() const`
- `FMatrix ToInverseMatrixWithScale() const`
- `SetLocation(FVector Origin)`
- `SetTranslation(FVector Origin)`
- `AddToTranslation(FVector Origin)`
- `ConcatenateRotation(FQuat DeltaRotation)`  
  Concatenates another rotation to this transformation
@param DeltaRotation The rotation to concatenate in the following fashion: Rotation = Rotation * DeltaRotation
- `SetRotation(FQuat NewRotation)`
- `SetScale3D(FVector NewScale3D)`
- `SetTranslationAndScale3D(FVector NewTranslation, FVector NewScale3D)`
- `bool InitFromString(FString SourceString)`
- `FString ToString() const`
- `Blend(FTransform Atom1, FTransform Atom2, float Alpha)`
- `BlendWith(FTransform OtherAtom, float Alpha)`
- `FRotator InverseTransformRotation(FRotator R) const`
- `SetRotation(FRotator NewRotation)`
- `FRotator TransformRotation(FRotator R) const`

---

