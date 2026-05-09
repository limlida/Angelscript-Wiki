### UWorldPartitionStreamingSourceComponent


**属性**:

- `FColor DebugColor [Color used for debugging.]`
- `float32 DefaultVisualizerLoadingRange [Value used by debug visualizer when grid loading range is chosen.]`
- `EStreamingSourcePriority Priority`
- `TArray<FStreamingSourceShape> Shapes [Optional aggregated shape list used to build a custom shape for the streaming source. When empty, fallbacks sphere shape with a radius equal to grid's loading range.]`
- `EStreamingSourceTargetBehavior TargetBehavior [When TargetGrids or TargetHLODLayers are specified, this indicates the behavior.]`
- `TArray<FName> TargetGrids [Optional target grids affected by streaming source.]`
- `EStreamingSourceTargetState TargetState []`
- `bool bStreamingSourceEnabled [Whether this component is enabled or not]`


**方法**:

- `DisableStreamingSource()`  
  Disable the component
- `EnableStreamingSource()`  
  Enable the component
- `bool IsStreamingCompleted() const`  
  Returns true if streaming is completed for this streaming source component.
- `bool IsStreamingSourceEnabled() const`  
  Returns true if the component is active.

---

