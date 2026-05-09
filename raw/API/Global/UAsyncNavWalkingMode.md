### UAsyncNavWalkingMode


AsyncNavWalkingMode: a default movement mode for traversing surfaces and movement bases by using an active navmesh when moving the actor rather than collision checks.
Note: This movement mode requires a NavMoverComponent be on the actor to function properly. This mode also contains some randomization to avoid navmesh look ups
    happening at the same time (which is fine for AI characters running on the server) but may cause issues if used on autonomous proxies.
This mode simulates movement without actually modifying any scene component(s).

**属性**:

- `EOffNavMeshBehavior BehaviorOffNavMesh [What should we do if we stray off the nav mesh?]`
- `float32 NavMeshProjectionHeightScaleDown [Scale of the total capsule height to use for projection from navmesh to underlying geometry in the downward direction.
In other words, trace down to [CapsuleHeight * NavMeshProjectionHeightScaleDown] below nav mesh.]`
- `float32 NavMeshProjectionHeightScaleUp [Scale of the total capsule height to use for projection from navmesh to underlying geometry in the upward direction.
In other words, start the trace at [CapsuleHeight * NavMeshProjectionHeightScaleUp] above nav mesh.]`
- `float32 NavMeshProjectionInterpSpeed [Speed at which to interpolate agent navmesh offset between traces. 0: Instant (no interp) > 0: Interp speed")]`
- `float32 NavMeshProjectionInterval [How often we should raycast to project from navmesh to underlying geometry]`
- `UObject TurnGenerator [Optional modular object for generating rotation towards desired orientation. If not specified, linear interpolation will be used.]`
- `bool bProjectNavMeshOnBothWorldChannels [Use both WorldStatic and WorldDynamic channels for NavWalking geometry conforming]`
- `bool bProjectNavMeshWalking [Whether to raycast to underlying geometry to better conform navmesh-walking actors]`
- `bool bSlideAlongNavMeshEdge [If attempting to stray off the nav mesh, should we slide along the edge instead? See @BehaviorOffNavMesh for cases where a sliding move can't be determined.]`
- `bool bSweepWhileNavWalking [Whether or not the actor should sweep for collision geometry while walking.]`


**方法**:

- `UObject GetTurnGenerator()`  
  Returns the active turn generator. Note: you will need to cast the return value to the generator you expect to get, it can also be none
- `SetTurnGeneratorClass(TSubclassOf<UObject> TurnGeneratorClass)`  
  Sets the active turn generator to use the class provided. Note: To set it back to the default implementation pass in none

---

