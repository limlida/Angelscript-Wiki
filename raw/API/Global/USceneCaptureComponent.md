### USceneCaptureComponent


-> will be exported to EngineDecalClasses.h

**属性**:

- `int CaptureSortPriority [Capture priority within the frame to sort scene capture on GPU to resolve interdependencies between multiple capture components. Highest come first.]`
- `ESceneCaptureSource CaptureSource`
- `UMaterialParameterCollection CollectionTransform [Store WorldToLocal and/or Projection matrices (2D capture only) to a Material Parameter Collection on render.]`
- `FName CollectionTransformProjection [Parameter name of the first element of the transform in the CollectionTransform Material Parameter Collection set above.  Requires space for 4 vectors.]`
- `FName CollectionTransformWorldToLocal [Parameter name of the first element of the transform in the CollectionTransform Material Parameter Collection set above.  Requires space for 5 vectors (large world coordinate transform).]`
- `TArray<TObjectPtr<AActor>> HiddenActors [The actors to hide in the scene capture.]`
- `float32 LODDistanceFactor [Scales the distance used by LOD. Set to values greater than 1 to cause the scene capture to use lower LODs than the main view to speed up the scene capture pass.]`
- `float32 MaxViewDistanceOverride [if > 0, sets a maximum render distance override.  Can be used to cull distant objects from a reflection if the reflecting plane is in an enclosed area like a hallway or room]`
- `ESceneCapturePrimitiveRenderMode PrimitiveRenderMode [Controls what primitives get rendered into the scene capture.]`
- `FString ProfilingEventName [Name of the profiling event.]`
- `TArray<FEngineShowFlagsSetting> ShowFlagSettings`
- `TArray<TObjectPtr<AActor>> ShowOnlyActors [The only actors to be rendered by this scene capture, if PrimitiveRenderMode is set to UseShowOnlyList.]`
- `FViewLightingChannels ViewLightingChannels [View / light masking support.  Controls which lights should affect this view.]`
- `bool bAlwaysPersistRenderingState [Whether to persist the rendering state even if bCaptureEveryFrame==false.  This allows velocities for Motion Blur and Temporal AA to be computed.]`
- `bool bCaptureEveryFrame [Whether to update the capture's contents every frame.  If disabled, the component will render once on load and then only when moved.]`
- `bool bCaptureGpuNextRender [Capture a GPU frame for this scene capture, next time it renders (capture program must be connected).]`
- `bool bCaptureOnMovement [Whether to update the capture's contents on movement.  Disable if you are going to capture manually from blueprint.]`
- `bool bDumpGpuNextRender [Run DumpGPU for this scene capture, next time it renders.]`
- `bool bExcludeFromSceneTextureExtents [Whether this capture should be excluded from tracking scene texture extents.  This should be set when this capture is not expected to be
frequently used, especially if the capture resolution is very large.  Setting this for a single-use capture will avoid influencing other
scene texture extent decisions and avoid a possible ongoing increase in memory usage.]`
- `bool bUseRayTracingIfEnabled [Whether to use ray tracing for this capture. Ray Tracing must be enabled in the project.]`


**方法**:

- `ClearHiddenComponents()`  
  Clears the hidden list.
- `ClearShowOnlyComponents()`  
  Clears the Show Only list.
- `TArray<FEngineShowFlagsSetting> GetShowFlagSettings() const`  
  Get the show flag settings.
- `HideActorComponents(AActor InActor, bool bIncludeFromChildActors = false)`  
  Adds all primitive components in the actor to our list of hidden components.
@param bIncludeFromChildActors Whether to include the components from child actors
- `HideComponent(UPrimitiveComponent InComponent)`  
  Adds the component to our list of hidden components.
- `RemoveShowOnlyActorComponents(AActor InActor, bool bIncludeFromChildActors = false)`  
  Removes an actor's components from the Show Only list.
@param bIncludeFromChildActors Whether to remove the components from child actors
- `RemoveShowOnlyComponent(UPrimitiveComponent InComponent)`  
  Removes a component from the Show Only list.
- `SetCaptureSortPriority(int NewCaptureSortPriority)`  
  Changes the value of TranslucentSortPriority.
- `SetShowFlagSettings(TArray<FEngineShowFlagsSetting> InShowFlagSettings)`  
  Set the show flag settings.
- `ShowOnlyActorComponents(AActor InActor, bool bIncludeFromChildActors = false)`  
  Adds all primitive components in the actor to our list of show-only components.
@param bIncludeFromChildActors Whether to include the components from child actors
- `ShowOnlyComponent(UPrimitiveComponent InComponent)`  
  Adds the component to our list of show-only components.

---

