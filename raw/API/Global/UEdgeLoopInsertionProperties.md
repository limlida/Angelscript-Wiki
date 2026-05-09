### UEdgeLoopInsertionProperties


**属性**:

- `float DistanceOffset []`
- `EEdgeLoopInsertionMode InsertionMode [Determines how edge loops are added to the geometry]`
- `int NumLoops [How many loops to insert at a time. Only used with "even" positioning mode.]`
- `EEdgeLoopPositioningMode PositionMode [Determines how edge loops position themselves vertically relative to loop direction.]`
- `float ProportionOffset []`
- `float VertexTolerance [How close a new loop edge needs to pass next to an existing vertex to use that vertex rather than creating a new one.]`
- `bool bFlipOffsetDirection [Measure the distance offset from the opposite side of the edges.]`
- `bool bHighlightProblemGroups [When true, non-quad-like groups that stop the loop will be highlighted, with X's marking the corners.]`
- `bool bInteractive [When false, the distance/proportion offset is numerically specified, and mouse clicks just choose the edge.]`

---

