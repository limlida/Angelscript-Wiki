### FSphere


**属性**:

- `FVector Center`
- `float W`


**方法**:

- `FSphere opAdd(FSphere Other) const`
- `FSphere& opAddAssign(FSphere Other)`
- `bool Equals(FSphere Sphere, float Tolerance = KINDA_SMALL_NUMBER) const`
- `bool IsInside(FSphere Other, float Tolerance = KINDA_SMALL_NUMBER) const`
- `bool IsInside(FVector In, float Tolerance = KINDA_SMALL_NUMBER) const`
- `bool Intersects(FSphere Other, float Tolerance = KINDA_SMALL_NUMBER) const`
- `FSphere TransformBy(FTransform M) const`
- `float32 GetVolume() const`

---

