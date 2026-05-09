### UAISense_Sight


**属性**:

- `float32 HighImportanceQueryDistanceThreshold []`
- `int MaxAsyncTracesPerTick [Maximum number of asynchronous traces that can be requested in a single update call]`
- `float32 MaxQueryImportance []`
- `float MaxTimeSlicePerTick []`
- `int MaxTracesPerTick []`
- `int MinQueriesPerTimeSliceCheck []`
- `float32 PendingQueriesBudgetReductionRatio [Defines the amount of async trace queries to prevent based on the number of pending queries at the start of an update.
1 means that the async trace budget is slashed by the pending queries count
0 means that the async trace budget is not impacted by the pending queries]`
- `float32 SightLimitQueryImportance []`
- `bool bUseAsynchronousTraceForDefaultSightQueries [Defines if we are allowed to use asynchronous trace queries when there is no IAISightTargetInterface for a Target]`

---

