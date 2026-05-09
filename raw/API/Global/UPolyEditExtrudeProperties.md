### UPolyEditExtrudeProperties


**属性**:

- `EPolyEditExtrudeDirection Direction [Direction in which to extrude.]`
- `EPolyEditExtrudeModeOptions DirectionMode [How to move the vertices during the extrude]`
- `float Distance [Distance to extrude.]`
- `EPolyEditExtrudeDistanceMode DistanceMode [How the extrude distance is set.]`
- `float MaxDistanceScaleFactor [Controls the maximum distance vertices can move from the target distance in order to stay parallel with their source triangles.]`
- `EPolyEditExtrudeDirection MeasureDirection [What axis to measure the extrusion distance along.]`
- `bool bShellsToSolids [Controls whether extruding an entire open-border patch should create a solid or an open shell]`
- `bool bUseColinearityForSettingBorderGroups [When extruding regions that touch the mesh border, assign the side groups (groups on the
stitched side of the extrude) in a way that considers edge colinearity. For instance, when
true, extruding a flat rectangle will give four different groups on its sides rather than
one connected group.]`

---

