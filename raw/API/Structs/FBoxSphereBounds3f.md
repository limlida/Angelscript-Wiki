### FBoxSphereBounds3f


**属性**:

- `FVector3f BoxExtent`
- `FVector3f Origin`
- `float32 SphereRadius`


**方法**:

- `FBoxSphereBounds3f opAdd(FBoxSphereBounds3f Other) const`
- `bool opEquals(FBoxSphereBounds3f Other) const`
- `float32 ComputeSquaredDistanceFromBoxToPoint(FVector3f Point) const`
- `FBox3f GetBox() const`
- `FVector3f GetBoxExtrema(uint Extrema) const`
- `FSphere3f GetSphere() const`
- `FBoxSphereBounds3f ExpandBy(float32 ExpandAmount) const`
- `FBoxSphereBounds3f TransformBy(FTransform3f M) const`
- `FString ToString() const`

---

