### UGizmoRectangleComponent


Simple Component intended to be used as part of 3D Gizmos.
Draws outline of 3D rectangle based on parameters.

**属性**:

- `FVector DirectionX []`
- `FVector DirectionY []`
- `float32 LengthX []`
- `float32 LengthY []`
- `float32 OffsetX []`
- `float32 OffsetY []`
- `uint8 SegmentFlags []`
- `float32 Thickness []`
- `bool bOrientYAccordingToCamera [When true, instead of using the provided DirectionY, the component will
use a direction orthogonal to the camera direction and DirectionX. This
keeps the rectangle pinned along DirectionX but spun to be flatter
relative the camera.]`

---

