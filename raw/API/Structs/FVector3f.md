### FVector3f


**属性**:

- `float32 X`
- `float32 Y`
- `float32 Z`


**方法**:

- `FVector3f& opAssign(FVector3f Other)`
- `FVector3f opAdd(FVector3f Other) const`
- `FVector3f opSub(FVector3f Other) const`
- `FVector3f opMul(FVector3f Other) const`
- `FVector3f opDiv(FVector3f Other) const`
- `FVector3f opMul(float32 Scale) const`
- `FVector3f opDiv(float32 Scale) const`
- `FVector3f opNeg() const`
- `FVector3f opMulAssign(float32 Scale)`
- `FVector3f opDivAssign(float32 Scale)`
- `FVector3f opMulAssign(FVector3f Other)`
- `FVector3f opDivAssign(FVector3f Other)`
- `FVector3f opAddAssign(FVector3f Other)`
- `FVector3f opSubAssign(FVector3f Other)`
- `float32& opIndex(int Index)`
- `float32 opIndex(int Index) const`
- `bool opEquals(FVector3f Other) const`
- `bool Equals(FVector3f Other, float32 Tolerance = __KINDA_SMALL_NUMBER_flt) const`
- `FVector3f CrossProduct(FVector3f Other) const`
- `float32 DotProduct(FVector3f Other) const`
- `bool AllComponentsEqual(float32 Tolerance = __KINDA_SMALL_NUMBER_flt) const`
- `bool Parallel(FVector3f Normal2, float32 ParallelCosineThreshold = __THRESH_NORMALS_ARE_PARALLEL_flt) const`  
  * See if two normal vectors are nearly parallel, meaning the angle between them is close to 0 degrees. 
* @param  Normal1 First normalized vector.
* @param  Normal1 Second normalized vector.
* @param  ParallelCosineThreshold Normals are parallel if absolute value of dot product (cosine of angle between them) is greater than or equal to this. For example: cos(1.0 degrees). 
* @return true if vectors are nearly parallel, false otherwise. 

- `bool Coincident(FVector3f Normal2, float32 ParallelCosineThreshold = __THRESH_NORMALS_ARE_PARALLEL_flt) const`  
  * See if two normal vectors are coincident (nearly parallel and point in the same direction).
* @param  Normal1 First normalized vector.
* @param  Normal2 Second normalized vector.
* @param  ParallelCosineThreshold Normals are coincident if dot product (cosine of angle between them) is greater than or equal to this. For example: cos(1.0 degrees).
* @return true if vectors are coincident (nearly parallel and point in the same direction), false otherwise.

- `bool Orthogonal(FVector3f Normal2, float32 OrthogonalCosineThreshold = __THRESH_NORMALS_ARE_ORTHOGONAL_flt) const`  
  * See if two normal vectors are nearly orthogonal (perpendicular), meaning the angle between them is close to 90 degrees.
* @param  Normal1 First normalized vector.
* @param  Normal2 Second normalized vector.
* @param  OrthogonalCosineThreshold Normals are orthogonal if absolute value of dot product (cosine of angle between them) is less than or equal to this. For example: cos(89.0 degrees).
* @return true if vectors are orthogonal (perpendicular), false otherwise.

- `float32 GetMax() const`
- `float32 GetAbsMax() const`
- `float32 GetMin() const`
- `float32 GetAbsMin() const`
- `FVector3f ComponentMin(FVector3f Other) const`
- `FVector3f ComponentMax(FVector3f Other) const`
- `FVector3f ComponentClamp(FVector3f Min, FVector3f Max) const`
- `FVector3f GetAbs() const`
- `float32 Size() const`
- `float32 SizeSquared() const`
- `float32 Size2D() const`
- `float32 SizeSquared2D() const`
- `bool IsNearlyZero(float32 Tolerance = __KINDA_SMALL_NUMBER_flt) const`
- `bool IsZero() const`
- `bool Normalize(float32 Tolerance = __SMALL_NUMBER_flt)`
- `bool IsNormalized() const`
- `ToDirectionAndLength(FVector3f& OutDir, float32& OutLength) const`
- `FVector3f GetSignVector() const`
- `FVector3f Projection() const`
- `FVector3f GetUnsafeNormal() const`
- `FVector3f GridSnap(float32 GridSize) const`
- `FVector3f BoundToCube(float32 Radius) const`
- `FVector3f BoundToBox(FVector3f Min, FVector3f Max) const`
- `FVector3f GetClampedToSize(float32 Min, float32 Max) const`
- `FVector3f GetClampedToSize2D(float32 Min, float32 Max) const`
- `FVector3f GetClampedToMaxSize(float32 Max) const`
- `FVector3f GetClampedToMaxSize2D(float32 Max) const`
- `AddBounded(FVector3f V, float32 Radius = MAX_int16) const`
- `FVector3f Reciprocal() const`
- `bool IsUniform(float32 Tolerance = KINDA_SMALL_NUMBER) const`
- `FVector3f MirrorByVector(FVector3f MirrorNormal) const`
- `FVector3f VectorPlaneProject(FVector3f PlaneNormal) const`
- `FVector3f RotateAngleAxis(float32 AngleDeg, FVector3f Axis) const`
- `FVector3f GetSafeNormal(float32 Tolerance = __SMALL_NUMBER_flt, FVector3f ResultIfZero = FVector3f :: ZeroVector) const`
- `FVector3f GetSafeNormal2D(float32 Tolerance = __SMALL_NUMBER_flt, FVector3f ResultIfZero = FVector3f :: ZeroVector) const`
- `float32 CosineAngle2D(FVector3f B) const`
- `FVector3f ProjectOnTo(FVector3f A) const`  
  Gets a copy of this vector projected onto the input vector.

@param A	Vector to project onto, does not assume it is normalized.
@return Projected vector.
- `FVector3f ProjectOnToNormal(FVector3f Normal) const`  
  Gets a copy of this vector projected onto the input vector, which is assumed to be unit length.

@param A	Normal vector to project onto (assumed to be unit length).
@return Projected vector.
- `FindBestAxisVectors(FVector3f& Axis1, FVector3f& Axis2) const`
- `UnwindEuler() const`
- `bool ContainsNaN() const`
- `bool IsUnit(float32 LengthSquaredTolerance = __KINDA_SMALL_NUMBER_flt) const`
- `float32 HeadingAngle() const`
- `bool PointsAreSame(FVector3f P2) const`
- `bool PointsAreNear(FVector3f P2, float32 Dist) const`
- `float32 Distance(FVector3f Other) const`
- `float32 DistSquared(FVector3f Other) const`
- `float32 Dist2D(FVector3f Other) const`
- `float32 DistXY(FVector3f Other) const`
- `float32 DistSquaredXY(FVector3f Other) const`
- `float32 DistSquared2D(FVector3f Other) const`
- `FRotator3f ToOrientationRotator() const`
- `FQuat4f ToOrientationQuat() const`
- `FRotator3f Rotation() const`
- `bool InitFromString(FString SourceString)`
- `FString ToString() const`
- `float32 AngularDistance(FVector3f B) const`  
  Get the angle in radians between two vectors. Vectors are not assumed to be normalized.
- `float32 AngularDistanceForNormals(FVector3f B) const`  
  Get the angle in radians between two normal vectors. Both vectors are assumed to be unit length, or a wrong value will be returned.
- `FVector3f ConstrainToDirection(FVector3f Direction) const`
- `FVector3f ConstrainToPlane(FVector3f PlaneUp) const`
- `float32 Dist2D(FVector3f Other, FVector3f UpDirection) const`
- `float32 DistSquared2D(FVector3f Other, FVector3f UpDirection) const`
- `FVector3f PointPlaneProject(FVector3f PlaneBase, FVector3f PlaneNormal) const`
- `float32 Size2D(FVector3f UpDirection) const`
- `float32 SizeSquared2D(FVector3f UpDirection) const`
- `FString ToColorString() const`

---

