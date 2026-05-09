### FZoneGraphBuildSettings


**属性**:

- `float32 CommonTessellationTolerance [Common tolerance for all lane tessellation, the error between tessellated point and the spline.]`
- `float32 ConnectionSnapAngle [Max relative angle (in degrees) between two shape points for them to be snapped together.]`
- `float32 ConnectionSnapDistance [Max distance between two shape points for them to be snapped together.]`
- `float DragEndpointAutoConnectRange [Max distance to auto connect a dragged end control point to the closest connector when released.]`
- `float DragEndpointAutoIntersectionRange [Max distance to automatically create an intersection with a dragged end control point and the overlapping zone shape when released.]`
- `float32 LaneConnectionAngle [Max relative angle (in degrees) between two lane profiles for them to be connected with lanes. In degrees.]`
- `FZoneGraphTagMask LaneConnectionMask [Mask of tags which should be used to check if lanes should connect.]`
- `TArray<FZoneGraphLaneRoutingRule> PolygonRoutingRules [Routing rules applied to polygon shapes]`
- `float SnapAutoIntersectionToClosestPointTolerance [If the location to create auto intersection is closer than the tolerance to a spline point, use the spline point instead of nearest point on spline to create the intersection.]`
- `TArray<FZoneGraphTessellationSettings> SpecificTessellationTolerances [Custom tessellation tolerances based on lane tags, first match is returned.]`
- `float32 TurnThresholdAngle [When the relative angle (in degrees) to destination on a polygon is more than the specified angle, it is considered left or right turn.]`
- `bool bShow3DRadiusForAutoConnectionAndIntersection [If true, draws a sphere for the auto connection/interseciont area. Otherwise, draws a circle.]`


**方法**:

- `FZoneGraphBuildSettings& opAssign(FZoneGraphBuildSettings Other)`

---

