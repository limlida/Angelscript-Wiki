### FVector


**属性**:

- `float X`
- `float Y`
- `float Z`


**方法**:

- `FVector& opAssign(FVector Other)`
- `FVector opAdd(FVector Other) const`
- `FVector opSub(FVector Other) const`
- `FVector opMul(FVector Other) const`
- `FVector opDiv(FVector Other) const`
- `FVector opMul(float Scale) const`
- `FVector opDiv(float Scale) const`
- `FVector opNeg() const`
- `FVector opMulAssign(float Scale)`
- `FVector opDivAssign(float Scale)`
- `FVector opMulAssign(FVector Other)`
- `FVector opDivAssign(FVector Other)`
- `FVector opAddAssign(FVector Other)`
- `FVector opSubAssign(FVector Other)`
- `float& opIndex(int Index)`
- `float opIndex(int Index) const`
- `bool opEquals(FVector Other) const`
- `bool Equals(FVector Other, float Tolerance = KINDA_SMALL_NUMBER) const`
- `FVector CrossProduct(FVector Other) const`
- `float DotProduct(FVector Other) const`
- `bool AllComponentsEqual(float Tolerance = KINDA_SMALL_NUMBER) const`
- `bool Parallel(FVector Normal2, float ParallelCosineThreshold = THRESH_NORMALS_ARE_PARALLEL) const`  
  * See if two normal vectors are nearly parallel, meaning the angle between them is close to 0 degrees. 
* @param  Normal1 First normalized vector.
* @param  Normal1 Second normalized vector.
* @param  ParallelCosineThreshold Normals are parallel if absolute value of dot product (cosine of angle between them) is greater than or equal to this. For example: cos(1.0 degrees). 
* @return true if vectors are nearly parallel, false otherwise. 

- `bool Coincident(FVector Normal2, float ParallelCosineThreshold = THRESH_NORMALS_ARE_PARALLEL) const`  
  * See if two normal vectors are coincident (nearly parallel and point in the same direction).
* @param  Normal1 First normalized vector.
* @param  Normal2 Second normalized vector.
* @param  ParallelCosineThreshold Normals are coincident if dot product (cosine of angle between them) is greater than or equal to this. For example: cos(1.0 degrees).
* @return true if vectors are coincident (nearly parallel and point in the same direction), false otherwise.

- `bool Orthogonal(FVector Normal2, float OrthogonalCosineThreshold = THRESH_NORMALS_ARE_ORTHOGONAL) const`  
  * See if two normal vectors are nearly orthogonal (perpendicular), meaning the angle between them is close to 90 degrees.
* @param  Normal1 First normalized vector.
* @param  Normal2 Second normalized vector.
* @param  OrthogonalCosineThreshold Normals are orthogonal if absolute value of dot product (cosine of angle between them) is less than or equal to this. For example: cos(89.0 degrees).
* @return true if vectors are orthogonal (perpendicular), false otherwise.

- `float GetMax() const`
- `float GetAbsMax() const`
- `float GetMin() const`
- `float GetAbsMin() const`
- `FVector ComponentMin(FVector Other) const`
- `FVector ComponentMax(FVector Other) const`
- `FVector ComponentClamp(FVector Min, FVector Max) const`
- `FVector GetAbs() const`
- `float Size() const`
- `float SizeSquared() const`
- `float Size2D() const`
- `float SizeSquared2D() const`
- `bool IsNearlyZero(float Tolerance = KINDA_SMALL_NUMBER) const`
- `bool IsZero() const`
- `bool Normalize(float Tolerance = SMALL_NUMBER)`
- `bool IsNormalized() const`
- `ToDirectionAndLength(FVector& OutDir, float& OutLength) const`
- `ToDirectionAndLength(FVector& OutDir, float32& OutLength) const`
- `FVector GetSignVector() const`
- `FVector Projection() const`
- `FVector GetUnsafeNormal() const`
- `FVector GridSnap(float GridSize) const`
- `FVector BoundToCube(float Radius) const`
- `FVector BoundToBox(FVector Min, FVector Max) const`
- `FVector GetClampedToSize(float Min, float Max) const`
- `FVector GetClampedToSize2D(float Min, float Max) const`
- `FVector GetClampedToMaxSize(float Max) const`
- `FVector GetClampedToMaxSize2D(float Max) const`
- `AddBounded(FVector V, float Radius = MAX_int16)`
- `FVector Reciprocal() const`
- `bool IsUniform(float Tolerance = KINDA_SMALL_NUMBER) const`
- `FVector MirrorByVector(FVector MirrorNormal) const`
- `FVector VectorPlaneProject(FVector PlaneNormal) const`
- `FVector RotateAngleAxis(float AngleDeg, FVector Axis) const`
- `FVector RotateAngleAxisRad(float AngleRad, FVector Axis) const`
- `FVector GetSafeNormal(float Tolerance = SMALL_NUMBER, FVector ResultIfZero = FVector :: ZeroVector) const`
- `FVector GetSafeNormal2D(float Tolerance = SMALL_NUMBER, FVector ResultIfZero = FVector :: ZeroVector) const`
- `float CosineAngle2D(FVector B) const`
- `FVector ProjectOnTo(FVector A) const`  
  Gets a copy of this vector projected onto the input vector.

@param A	Vector to project onto, does not assume it is normalized.
@return Projected vector.
- `FVector ProjectOnToNormal(FVector Normal) const`  
  Gets a copy of this vector projected onto the input vector, which is assumed to be unit length.

@param A	Normal vector to project onto (assumed to be unit length).
@return Projected vector.
- `FindBestAxisVectors(FVector& Axis1, FVector& Axis2) const`
- `UnwindEuler() const`
- `bool ContainsNaN() const`
- `bool IsUnit(float LengthSquaredTolerance = KINDA_SMALL_NUMBER) const`
- `float HeadingAngle() const`
- `bool PointsAreSame(FVector P2) const`
- `bool PointsAreNear(FVector P2, float Dist) const`
- `float Distance(FVector Other) const`
- `float DistSquared(FVector Other) const`
- `float Dist2D(FVector Other) const`
- `float DistXY(FVector Other) const`
- `float DistSquaredXY(FVector Other) const`
- `float DistSquared2D(FVector Other) const`
- `FRotator ToOrientationRotator() const`
- `FQuat ToOrientationQuat() const`
- `FRotator Rotation() const`
- `bool InitFromString(FString SourceString)`
- `FString ToString() const`
- `float AngularDistance(FVector B) const`  
  Get the angle in radians between two vectors. Vectors are not assumed to be normalized.
- `float AngularDistanceForNormals(FVector B) const`  
  Get the angle in radians between two normal vectors. Both vectors are assumed to be unit length, or a wrong value will be returned.
- `FVector ConstrainToDirection(FVector Direction) const`
- `FVector ConstrainToPlane(FVector PlaneUp) const`
- `float Dist2D(FVector Other, FVector UpDirection) const`
- `float DistSquared2D(FVector Other, FVector UpDirection) const`
- `FVector GetSafeNormal2D(FVector UpDirection, float Tolerance = 0.000000, FVector ResultIfZero = FVector ( )) const`
- `FVector MoveTowards(FVector Target, float StepSize) const`
- `FVector PointPlaneProject(FVector PlaneBase, FVector PlaneNormal) const`
- `float Size2D(FVector UpDirection) const`
- `float SizeSquared2D(FVector UpDirection) const`
- `FString ToColorString() const`

---

