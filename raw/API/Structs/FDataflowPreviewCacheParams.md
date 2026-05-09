### FDataflowPreviewCacheParams


**属性**:

- `int FrameRate [Number of sampling frames per second for caching]`
- `FVector2f RestartTimeRange [Time range of the restarted simulation]`
- `int SubframeRate [Number of subframes per frame for timeline clamping]`
- `FVector2f TimeRange [Time range of the simulation]`
- `bool bAsyncCaching [When enabled runs the caching proces on an async thread (allowing the UI to remain responsive)
This option will be disabled if the asset associated with the graph does not support asynchronous caching]`
- `bool bCanEditSubframeRate []`
- `bool bRestartSimulation [If enabled, the simulation will restart on Time Range without modifying anything outside of Time Range]`


**方法**:

- `FDataflowPreviewCacheParams& opAssign(FDataflowPreviewCacheParams Other)`

---

