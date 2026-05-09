### UWaterBodyComponent


**属性**:

- `TWeakObjectPtr<UBakedShallowWaterSimulationComponent> BakedShallowWaterSim [Baked simulation data for this water body, owned by a UShallowWaterRiverComponent]`
- `float32 CollisionHeightOffset [The distance above the surface of the water where collision checks should still occur. Useful if the post process effect is not activating under really high waves.]`
- `FWaterCurveSettings CurveSettings`
- `float FixedWaterDepth [If the Water Material assigned to this component has Fixed Depth enabled, this is the depth that is passed.]`
- `TMap<FName,FWaterBodyWeightmapSettings> LayerWeightmapSettings`
- `float32 MaxWaveHeightOffset [Offset added to the automatically calculated max wave height bounds. Use this in case the automatically calculated max height bounds don't match your waves. This can happen if the water surface is manually altered through World Position Offset or other means.]`
- `int OverlapMaterialPriority [Higher number is higher priority. If two water bodies overlap and they don't have a transition material specified, this will be used to determine which water body to use the material from. Valid range is -8192 to 8191]`
- `float32 ShapeDilation`
- `FWaterBodyStaticMeshSettings StaticMeshSettings []`
- `float32 TargetWaveMaskDepth [Water depth at which waves start being attenuated.]`
- `UMaterialInterface UnderwaterPostProcessMaterial [Post process material to apply when the camera goes underwater (only available when bGenerateCollisions is true because collisions are needed to detect if it's under water).]`
- `FUnderwaterPostProcessSettings UnderwaterPostProcessSettings [Post process settings to apply when the camera goes underwater (only available when collisions are enabled as they are needed to detect if the camera is under water).
      Note: Underwater post process material is setup using UnderwaterPostProcessMaterial.]`
- `TArray<TSoftObjectPtr<AWaterBodyExclusionVolume>> WaterBodyExclusionVolumes []`
- `int WaterBodyIndex [Unique Id for accessing (wave, ... ) data in GPU buffers]`
- `TArray<TSoftObjectPtr<AWaterBodyIsland>> WaterBodyIslands [Islands in this water body]`
- `UMaterialInterface WaterHLODMaterial`
- `FWaterBodyHeightmapSettings WaterHeightmapSettings`
- `UMaterialInterface WaterInfoMaterial`
- `UMaterialInterface WaterMaterial`
- `TObjectPtr<UStaticMesh> WaterMeshOverride`
- `TSubclassOf<UNavAreaBase> WaterNavAreaClass [The navigation area class that will be generated on nav mesh]`
- `UMaterialInterface WaterStaticMeshMaterial`
- `TSoftObjectPtr<AWaterZone> WaterZoneOverride`
- `bool bAffectsLandscape [If enabled, landscape will be deformed based on this water body placed on top of it and landscape height will be considered when determining water depth at runtime]`
- `bool bAlwaysGenerateWaterMeshTiles [When this is set to true, the water mesh will always generate tiles for this water body.
For example, this can be useful to generate water tiles even when the water material is invalid, for the case where "empty" water tiles are actually desirable.]`
- `bool bUseBakedSimForQueriesAndPhysics [Override to disable use of the baked shallow water simulation for collisions and other uses]`


**方法**:

- `float32 GetAudioIntensityAtSplineInputKey(float32 InKey) const`
- `TArray<UPrimitiveComponent> GetCollisionComponents(bool bInOnlyEnabledComponents = true) const`  
  Returns body's collision components
- `TArray<AWaterBodyExclusionVolume> GetExclusionVolumes() const`  
  Gets the exclusion volume that influence this water body
- `TArray<AWaterBodyIsland> GetIslands() const`  
  Gets the islands that influence this water body
- `float32 GetMaxWaveHeight() const`  
  Returns the max height that this water body's waves can hit. Can be called regardless of whether the water body supports waves or not
- `UMaterialInterface GetRiverToLakeTransitionMaterial() const`  
  Returns river to lake transition water material
- `UMaterialInstanceDynamic GetRiverToLakeTransitionMaterialInstance()`  
  Returns River to lake transition material instance (For internal use. Please use AWaterBodyRiver instead.)
- `UMaterialInterface GetRiverToOceanTransitionMaterial() const`  
  Returns river to ocean transition water material
- `UMaterialInstanceDynamic GetRiverToOceanTransitionMaterialInstance()`  
  Returns River to ocean transition material instance (For internal use. Please use AWaterBodyRiver instead.)
- `TArray<UPrimitiveComponent> GetStandardRenderableComponents() const`  
  Retrieves the list of primitive components that this water body uses when not being rendered by the water mesh (e.g. the static mesh component used when WaterMeshOverride is specified)
- `UMaterialInstanceDynamic GetUnderwaterPostProcessMaterialInstance()`  
  Returns under water post process MID
- `AWaterBody GetWaterBodyActor() const`  
  Returns the WaterBodyActor who owns this component
- `UMaterialInstanceDynamic GetWaterInfoMaterialInstance()`  
  Returns water info MID
- `UMaterialInstanceDynamic GetWaterLODMaterialInstance()`
- `UMaterialInterface GetWaterMaterial() const`  
  Returns water material
- `UMaterialInstanceDynamic GetWaterMaterialInstance()`  
  Returns water MID
- `UWaterSplineComponent GetWaterSpline() const`  
  Returns water spline component
- `UMaterialInstanceDynamic GetWaterStaticMeshMaterialInstance()`  
  Returns water static mesh MID
- `bool GetWaterSurfaceInfoAtLocation(FVector InLocation, FVector& OutWaterSurfaceLocation, FVector& OutWaterSurfaceNormal, FVector& OutWaterVelocity, float32& OutWaterDepth, bool bIncludeDepth = false) const`
- `float32 GetWaterVelocityAtSplineInputKey(float32 InKey) const`  
  * Spline queries specific to metadata type
- `FVector GetWaterVelocityVectorAtSplineInputKey(float32 InKey) const`
- `UWaterWavesBase GetWaterWaves() const`
- `OnWaterBodyChanged(bool bShapeOrPositionChanged, bool bWeightmapSettingsChanged = false, bool bUserTriggeredChanged = false)`
- `SetAudioIntensityAtSplineInputKey(float32 InKey, float32 InAudioIntensity)`
- `SetUnderwaterPostProcessMaterial(UMaterialInterface InMaterial)`  
  Sets under water post process material
- `SetWaterAndUnderWaterPostProcessMaterial(UMaterialInterface InWaterMaterial, UMaterialInterface InUnderWaterPostProcessMaterial)`
- `SetWaterBodyStaticMeshEnabled(bool bEnabled)`
- `SetWaterInfoMaterial(UMaterialInterface InMaterial)`  
  Sets the material used to draw the Water Info Texture for this water body
- `SetWaterMaterial(UMaterialInterface InMaterial)`  
  Sets water material
- `SetWaterStaticMeshMaterial(UMaterialInterface InMaterial)`  
  Sets water static mesh material
- `SetWaterVelocityAtSplineInputKey(float32 InKey, float32 InVelocity)`
- `SetWaterZoneOverride(TSoftObjectPtr<AWaterZone> InWaterZoneOverride)`  
  Override the default behavior of water bodies finding their water zone based on bounds and set a specific water zone to which this water body should register.

---

