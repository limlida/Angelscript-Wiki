### UNiagaraDataChannel_Islands


Data channel that will automatically sub-divide the world into discreet "islands" based on location.

**属性**:

- `FNDCIslandDebugDrawSettings DebugDrawSettings []`
- `FVector InitialExtents [Starting extents of the island's bounds.]`
- `int IslandPoolSize [How many pre-allocated islands to keep in the pool. Higher values will incur a larger standing memory cost but will reduce activation times for new islands.]`
- `FVector MaxExtents [The maximum total extents of each island. If a new element would grow the bounds beyond this size then a new island is created.]`
- `ENiagraDataChannel_IslandMode Mode [Controls how islands are placed and sized.]`
- `FVector PerElementExtents [The extents for every element entered into this data channel.
We use this to pad the ends of islands to ensure that all data in an island will be covered.]`
- `TArray<TSoftObjectPtr<UNiagaraSystem>> Systems [One or more Niagara Systems to spawn that will consume the data in this island.
Each island will have an instance of these systems created.
These systems are intended to consume data for this whole island and generate effects that cover the whole island.
The actual bounds of each of these system instances will be set to the current total bounds of the island.]`

---

