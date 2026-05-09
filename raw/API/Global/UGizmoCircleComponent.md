### UGizmoCircleComponent


Simple Component intended to be used as part of 3D Gizmos.
Draws a 3D circle based on parameters.

**属性**:

- `FVector Normal []`
- `int NumSides []`
- `float32 Radius []`
- `float32 Thickness []`
- `bool bDrawFullCircle []`
- `bool bOnlyAllowFrontFacingHits [If the circle was on a 3D sphere, then only the 'front' part of the circle can be hit,
(in other words, if the ray would hit the sphere first, ignore the hit).
Dynamically disabled if the circle is parallel to the view plane (ie "fully visible")]`
- `bool bViewAligned []`

---

