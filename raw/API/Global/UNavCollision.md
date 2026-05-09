### UNavCollision


**属性**:

- `TSubclassOf<UNavArea> AreaClass [navigation area type that will be use when this static mesh is used as
    a navigation obstacle. See bIsDynamicObstacle.
    Empty AreaClass means the default obstacle class will be used]`
- `TArray<FNavCollisionBox> BoxCollision [list of nav collision boxes]`
- `TArray<FNavCollisionCylinder> CylinderCollision [list of nav collision cylinders]`
- `bool bCreateOnClient [If false, will not create nav collision when connecting as a client]`
- `bool bGatherConvexGeometry [If set, convex collisions will be exported offline for faster runtime navmesh building (increases memory usage)]`

---

