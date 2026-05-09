### FMargin


Describes the space around a Widget.

**属性**:

- `float32 Bottom [Holds the margin to the bottom.]`
- `float32 Left [Holds the margin to the left.]`
- `float32 Right [Holds the margin to the right.]`
- `float32 Top [Holds the margin to the top.]`


**方法**:

- `FMargin opMul(float32 Scale) const`
- `FMargin opMul(FMargin InScale) const`
- `FMargin opAdd(FMargin Other) const`
- `FMargin opSub(FMargin Other) const`
- `bool opEquals(FMargin Other) const`
- `FVector2D GetTopLeft() const`
- `FVector2D GetDesiredSize() const`
- `float32 GetTotalSpaceAlongHorizontal() const`
- `float32 GetTotalSpaceAlongVertical() const`
- `FMargin& opAssign(FMargin Other)`

---

