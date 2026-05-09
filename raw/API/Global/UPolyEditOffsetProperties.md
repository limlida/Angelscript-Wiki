### UPolyEditOffsetProperties


**属性**:

- `EPolyEditOffsetModeOptions DirectionMode [Which way to move vertices during the offset]`
- `float Distance [Offset distance.]`
- `EPolyEditExtrudeDistanceMode DistanceMode [How the offset distance is set.]`
- `float MaxDistanceScaleFactor [Controls the maximum distance vertices can move from the target distance in order to stay parallel with their source triangles.]`
- `EPolyEditExtrudeDirection MeasureDirection [What axis to measure the offset distance along.]`
- `bool bShellsToSolids [Controls whether offsetting an entire open-border patch should create a solid or an open shell]`
- `bool bUseColinearityForSettingBorderGroups [When offsetting regions that touch the mesh border, assign the side groups (groups on the
stitched side of the offset) in a way that considers edge colinearity. For instance, when
true, extruding a flat rectangle will give four different groups on its sides rather than
one connected group.]`

---

