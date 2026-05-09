### FGeometry


Represents the position, size, and absolute position of a Widget in Slate.
The absolute location of a geometry is usually screen space or
window space depending on where the geometry originated.
Geometries are usually paired with a SWidget pointer in order
to provide information about a specific widget (see FArrangedWidget).
A Geometry's parent is generally thought to be the Geometry of the
the corresponding parent widget.

**方法**:

- `FVector2D GetRenderTransformScale() const`
- `FVector2D GetRenderTransformTranslation() const`
- `FVector2D GetAbsolutePosition() const`
- `FVector2D GetLocalSize() const`
- `FVector2D GetAbsoluteSize() const`
- `FVector2D AbsoluteToLocal(FVector2D Position) const`
- `FVector2D LocalToAbsolute(FVector2D Position) const`
- `FGeometry MakeChild(FVector2D Position, FVector2D Size) const`
- `FGeometry MakeTransformedChild(FVector2D Translation, FVector2D Scale) const`
- `FGeometry& opAssign(FGeometry Other)`

---

