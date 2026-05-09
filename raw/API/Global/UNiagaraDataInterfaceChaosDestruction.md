### UNiagaraDataInterfaceChaosDestruction


Data Interface allowing sampling of Chaos Destruction data.

**属性**:

- `TSet<TObjectPtr<UPhysicalMaterial>> ChaosBreakingMaterialSet [TODO: Explanatory comment]`
- `TSet<TObjectPtr<AChaosSolverActor>> ChaosSolverActorSet [Chaos Solver]`
- `int DataProcessFrequency [Number of times the RBD collision data gets processed every second]`
- `EDataSortTypeEnum DataSortingType [Sorting method to sort the collision data]`
- `EDataSourceTypeEnum DataSourceType []`
- `EDebugTypeEnum DebugType [Debug visualization method]`
- `bool DoSpatialHash []`
- `bool DoSpawn [Turn on/off particle spawning]`
- `FVector2D ExtentMaxToSpawnMinMax [Min/Max ExtentMax to spawn particles]`
- `FVector2D ExtentMinToSpawnMinMax [Min/Max ExtentMin to spawn particles]`
- `FVector2D FinalVelocityMagnitudeMinMax [Clamp particles velocity]`
- `FVector2D ImpulseToSpawnMinMax [Min/Max collision accumulated impulse to spawn particles]`
- `float32 InheritedVelocityMultiplier [How much of the collision velocity gets inherited]`
- `ELocationFilteringModeEnum LocationFilteringMode [Location Filtering Mode]`
- `ELocationXToSpawnEnum LocationXToSpawn [How to use LocationX to filter]`
- `FVector2D LocationXToSpawnMinMax [Min/Max LocationX to spawn particles]`
- `ELocationYToSpawnEnum LocationYToSpawn [How to use LocationY to filter]`
- `FVector2D LocationYToSpawnMinMax [Min/Max LocationY to spawn particles]`
- `ELocationZToSpawnEnum LocationZToSpawn [How to use LocationZ to filter]`
- `FVector2D LocationZToSpawnMinMax [Min/Max LocationX to spawn particles]`
- `FVector2D MassToSpawnMinMax [Min/Max mass to spawn particles]`
- `int MaxDataPerCell []`
- `float32 MaxLatency []`
- `int MaxNumberOfDataEntriesToSpawn [Maximum number of collision/breaking/trailing entry used for spawning particles every time data from the physics solver gets processed]`
- `FVector2D RandomPositionMagnitudeMinMax [Random displacement value for the particle spawn position]`
- `ERandomVelocityGenerationTypeEnum RandomVelocityGenerationType [The method used to create the random velocities for the newly spawned particles]`
- `FVector2D RandomVelocityMagnitudeMinMax [Every particles will be spawned with random velocity with magnitude in the range of [RandomVelocityMagnitudeMin, RandomVelocityMagnitudeMax]]`
- `FVector2D SolverTimeToSpawnMinMax [Min/Max solver time mass to spawn particles]`
- `FVector SpatialHashVolumeCellSize [SpatialHash volume resolution]`
- `FVector SpatialHashVolumeMax [SpatialHash volume max]`
- `FVector SpatialHashVolumeMin [SpatialHash volume min]`
- `float32 SpawnChance [For every collision random number of particles will be spawned in the range of [SpawnMultiplierMin, SpawnMultiplierMax]]`
- `FVector2D SpawnMultiplierMinMax [For every collision random number of particles will be spawned in the range of [SpawnMultiplierMin, SpawnMultiplierMax]]`
- `FVector2D SpeedToSpawnMinMax [Min/Max speed to spawn particles]`
- `float32 SpreadAngleMax []`
- `int SurfaceTypeToSpawn [SurfaceType to spawn particles]`
- `float32 TrailMinSpeedToSpawn [Min Linear Speed to generate trailing particles]`
- `FVector VelocityOffsetMax [Max Offset value added to spawned particles velocity]`
- `FVector VelocityOffsetMin [Min Offset value added to spawned particles velocity]`
- `FVector2D VolumeToSpawnMinMax [Min/Max volume to spawn particles]`
- `bool bApplyMaterialsFilter [Materials Filter]`
- `bool bGetExternalBreakingData [TODO: Explanatory comment]`

---

