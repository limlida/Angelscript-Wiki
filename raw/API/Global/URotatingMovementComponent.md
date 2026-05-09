### URotatingMovementComponent


Performs continuous rotation of a component at a specific rotation rate.
Rotation can optionally be offset around a pivot point.
Collision testing is not performed during movement.

**属性**:

- `FVector PivotTranslation [Translation of pivot point around which we rotate, relative to current rotation.
For instance, with PivotTranslation set to (X=+100, Y=0, Z=0), rotation will occur
around the point +100 units along the local X axis from the center of the object,
rather than around the object's origin (the default).]`
- `FRotator RotationRate [How fast to update roll/pitch/yaw of the component we update.]`
- `bool bRotationInLocalSpace [Whether rotation is applied in local or world space.]`

---

