### FBoxSphereBounds


**属性**:

- `FVector BoxExtent`
- `FVector Origin`
- `float SphereRadius`


**方法**:

- `FBoxSphereBounds opAdd(FBoxSphereBounds Other) const`
- `bool opEquals(FBoxSphereBounds Other) const`
- `float ComputeSquaredDistanceFromBoxToPoint(FVector Point) const`
- `FBox GetBox() const`
- `FVector GetBoxExtrema(uint Extrema) const`
- `FSphere GetSphere() const`
- `FBoxSphereBounds ExpandBy(float ExpandAmount) const`
- `FBoxSphereBounds TransformBy(FTransform M) const`
- `FString ToString() const`

---

