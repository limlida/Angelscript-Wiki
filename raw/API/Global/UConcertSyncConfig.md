### UConcertSyncConfig


**属性**:

- `TArray<FPackageClassFilter> ExcludePackageClassFilters [Array of package class filter.
Packages that matches those filters, will be excluded from propagating to the server when saved.]`
- `TArray<FTransactionClassFilter> ExcludeTransactionClassFilters [Array of additional Transaction class filter.
Objects that matches those filters, will prevent the whole transaction from propagation.
@note These filters takes precedence over the IncludeObjectClassFilters]`
- `TArray<FName> ExcludedPropertyTypes [Array of property types that we should filtered out.]`
- `TArray<FTransactionClassFilter> IncludeObjectClassFilters [Array of Transaction class filter.
Only objects that pass those filters will be included in transaction updates.
@note If this is empty, then all class types will send transaction updates.]`
- `TArray<FConcertReplicationActionEntry> PostReplicateActions [Defines actions that are to be executed after certain properties are replicated, such as calling PostEditChange, etc.]`
- `EShowPresenceInGame ShowPresenceInGame [Should we show presence when we are in game mode when running the editor.]`
- `float32 SnapshotTransactionsPerSecond [Number of snapshot transactions (eg, moving an object or dragging a slider) that should be sent per-second to other clients.]`
- `bool bIncludeAnnotationObjectChanges [Should we include object changes that have been generated via a transaction annotation
(where possible), or should we send the entire transaction annotation blob instead.]`
- `bool bInteractiveHotReload [Should we ask before hot-reloading changed packages?
If disabled we will clobber any local changes when reloading packages.]`
- `bool bShowPresenceInPIE [Should we show presence when in PIE?]`

---

