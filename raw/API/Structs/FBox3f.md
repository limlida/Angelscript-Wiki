### FBox3f


**属性**:

- `FVector3f Max`
- `FVector3f Min`


**方法**:

- `FBox3f& opAssign(FBox3f Other)`
- `FBox3f opAdd(FBox3f Other) const`
- `FBox3f& opAddAssign(FBox3f Other)`
- `bool opEquals(FBox3f Other) const`
- `bool Intersect(FBox3f other) const`
- `FBox3f opAdd(FVector3f Other) const`
- `FBox3f& opAddAssign(FVector3f Other)`
- `FVector3f& opIndex(int Index)`
- `FVector3f GetCenter() const`
- `FVector3f GetExtent() const`
- `GetCenterAndExtents(FVector3f& Center, FVector3f& Extents) const`
- `FVector3f GetClosestPointTo(FVector3f In) const`
- `FBox3f InverseTransformBy(FTransform M) const`
- `FBox3f TransformBy(FTransform3f M) const`
- `bool IsInside(FVector3f In) const`
- `bool IsInsideOrOn(FVector3f In) const`
- `FString ToString() const`

---

