### FBox


**属性**:

- `bool IsValid`
- `FVector Max`
- `FVector Min`


**方法**:

- `FBox& opAssign(FBox Other)`
- `FBox opAdd(FBox Other) const`
- `FBox& opAddAssign(FBox Other)`
- `bool opEquals(FBox Other) const`
- `FBox opAdd(FVector Other) const`
- `FBox& opAddAssign(FVector Other)`
- `FVector& opIndex(int Index)`
- `FVector GetCenter() const`
- `FVector GetExtent() const`
- `float GetVolume() const`
- `GetCenterAndExtents(FVector& Center, FVector& Extents) const`
- `FVector GetClosestPointTo(FVector In) const`
- `FBox InverseTransformBy(FTransform M) const`
- `FBox TransformBy(FTransform M) const`
- `bool Equals(FBox Other, float Tolerance = KINDA_SMALL_NUMBER) const`
- `bool Intersect(FBox Other) const`
- `bool IntersectXY(FBox Other) const`
- `FBox Overlap(FBox Other) const`
- `FBox ExpandBy(float W) const`
- `FBox ExpandBy(FVector V) const`
- `FBox ShiftBy(FVector Offset) const`
- `FBox MoveTo(FVector Destination) const`
- `bool IsInside(FVector In) const`
- `bool IsInsideOrOn(FVector In) const`
- `bool IsInside(FBox In) const`
- `bool IsInsideOrOn(FBox In) const`
- `bool IsInsideXY(FVector In) const`
- `bool IsInsideOrOnXY(FVector In) const`
- `bool IsInsideXY(FBox In) const`
- `FString ToString() const`

---

