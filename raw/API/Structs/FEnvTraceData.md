### FEnvTraceData


**属性**:

- `float32 ExtentX [shape parameter for trace]`
- `float32 ExtentY [shape parameter for trace]`
- `float32 ExtentZ [shape parameter for trace]`
- `TSubclassOf<UNavigationQueryFilter> NavigationFilter [navigation filter for tracing]`
- `float32 PostProjectionVerticalOffset [this value will be added to resulting location's Z axis. Can be useful when
    projecting points to navigation since navmesh is just an approximation of level
    geometry and items may end up being under collide-able geometry which would
    for example falsify visibility tests.]`
- `float32 ProjectDown [search height: below point]`
- `float32 ProjectUp [search height: above point]`
- `ECollisionChannel SerializedChannel [geometry trace channel for serialization purposes]`
- `ETraceTypeQuery TraceChannel [geometry trace channel]`
- `EEnvQueryTrace TraceMode [shape used for geometry tracing]`
- `FName TraceProfileName [geometry trace profile]`
- `EEnvTraceShape TraceShape [shape used for geometry tracing]`
- `bool bCanDisableTrace [if set, editor will allow]`
- `bool bCanProjectDown [if set, editor show height up/down properties for projection]`
- `bool bCanTraceOnGeometry [if set, editor will allow picking geometry trace]`
- `bool bCanTraceOnNavMesh [if set, editor will allow picking navmesh trace]`
- `bool bOnlyBlockingHits [if set, trace will look only for blocking hits]`
- `bool bTraceComplex [if set, trace will run on complex collisions]`


**方法**:

- `FEnvTraceData& opAssign(FEnvTraceData Other)`

---

