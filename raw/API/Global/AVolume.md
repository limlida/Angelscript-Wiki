### AVolume


An editable 3D volume placed in a level. Different types of volumes perform different functions
@see https://docs.unrealengine.com/latest/INT/Engine/Actors/Volumes

**方法**:

- `FBoxSphereBounds GetBounds() const`
- `bool EncompassesPoint(FVector Point, float32 SphereRadius = 0.f) const`
- `bool EncompassesPoint(FVector Point, float32 SphereRadius, float32& OutDistanceToPoint) const`
- `SetBrushColor(FLinearColor InBrushColor)`

---

