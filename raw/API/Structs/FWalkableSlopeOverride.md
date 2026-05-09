### FWalkableSlopeOverride


Struct allowing control over "walkable" normals, by allowing a restriction or relaxation of what steepness is normally walkable.

**属性**:

- `float32 WalkableSlopeAngle [Override walkable slope angle (in degrees), applying the rules of the Walkable Slope Behavior.
@see GetWalkableSlopeAngle(), SetWalkableSlopeAngle()]`
- `EWalkableSlopeBehavior WalkableSlopeBehavior [Behavior of this surface (whether we affect the walkable slope).
@see GetWalkableSlopeBehavior(), SetWalkableSlopeBehavior()]`


**方法**:

- `FWalkableSlopeOverride& opAssign(FWalkableSlopeOverride Other)`

---

