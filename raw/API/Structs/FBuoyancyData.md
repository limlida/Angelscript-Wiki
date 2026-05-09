### FBuoyancyData


**属性**:

- `float32 AngularDragCoefficient [Coefficient for applying angular drag that resists the rotation of the object]`
- `float32 BuoyancyCoefficient [Increases buoyant force applied on each pontoon.]`
- `float32 BuoyancyDamp [Damping factor to scale damping based on Z velocity.]`
- `float32 BuoyancyDamp2 [Second Order Damping factor to scale damping based on Z velocity.]`
- `float32 BuoyancyRampMax [Maximum value that buoyancy can ramp to (at or beyond max velocity).]`
- `float32 BuoyancyRampMaxVelocity [Maximum velocity until which the buoyancy can ramp up.]`
- `float32 BuoyancyRampMinVelocity [Minimum velocity to start applying a ramp to buoyancy.]`
- `FVector DownstreamAxisOfRotation [The axis with respect to the object that the downstream angular rotation should be aligned]`
- `float32 DownstreamMaxAcceleration [Maximum torque to apply per update for downstream rotation]`
- `float32 DownstreamRotationAngularDamping [Damping of the spring used to align the object along the downstream direction]`
- `float32 DownstreamRotationStiffness [Stiffness of the spring used to align the object along the downstream direction]`
- `float32 DownstreamRotationStrength [Strength of the downstream angular rotation application]`
- `float32 DragCoefficient [Coefficient for applying linear drag based on speed]`
- `float32 DragCoefficient2 [Coefficient for applying linear drag based on the square of the speed]`
- `float32 MaxBuoyantForce [Maximum buoyant force in the Up direction.]`
- `float32 MaxDragSpeed [Max speed for which drag force is applied]`
- `float32 MaxShorePushForce [Maximum push force that can be applied by riverths towards the center or edge.]`
- `float32 MaxWaterForce [Maximum push force that can be applied by rivers.]`
- `TArray<FSphericalPontoon> Pontoons`
- `int RiverPontoonIndex [Pontoon to calculate water forces from. Used to calculate lateral push/pull, to grab water velocity for main force calculations from for downstream calculation if possible.]`
- `float32 RiverTraversalPathWidth [Path width along the inside of the river which the object should traverse]`
- `float32 WaterShorePushFactor [Coefficient for nudging objects to shore in Rivers (for perf reasons). Or, set negative to push towards center of river.]`
- `float32 WaterVelocityStrength [Coefficient for applying push force in rivers.]`
- `bool bAllowCurrentWhenMovingFastUpstream [Apply the current when moving at high speeds upstream. Disable for vehicles to have more control]`
- `bool bAlwaysAllowLateralPush [Allow an object to be pushed laterally regardless of the forward movement speed through the river]`
- `bool bApplyDownstreamAngularRotation [Apply torque to align the object along the downstream direction of the river]`
- `bool bApplyDragForcesInWater []`
- `bool bApplyRiverForces [Whether we should apply river forces such as downstream push and shore push]`
- `bool bCenterPontoonsOnCOM [If true, center pontoons around center of mass when using relative locations
              (not used when pontoon locations are specified via sockets)]`


**方法**:

- `FBuoyancyData& opAssign(FBuoyancyData Other)`

---

