### FZoneShapePoint


**属性**:

- `float32 InnerTurnRadius [Inner turn radius associated with this point. Used when polygon shape routing is set to 'Arcs'.]`
- `int LaneConnectionRestrictions [Lane connection restrictions]`
- `uint8 LaneProfile [Index to external array referring to Lane Profile, or FZoneShapePoint::InheritLaneProfile if we should use Shape's lane profile.
This is a little awkward indirection, but keeps the point memory usage in check.]`
- `FVector Position [Position of the point]`
- `FRotator Rotation [Rotation of the point. Forward direction of the rotation matches the tangents.
For Lane Profile points, the forward directions points into the shape so that we can match the incoming lanes rotation.]`
- `float32 TangentLength [Length of the Bezier point tangents, or cached half-width of the lane profile.]`
- `FZoneShapePointType Type [Type of the control point]`
- `bool bReverseLaneProfile [True of lane profile should be reversed.]`


**方法**:

- `FZoneShapePoint& opAssign(FZoneShapePoint Other)`

---

