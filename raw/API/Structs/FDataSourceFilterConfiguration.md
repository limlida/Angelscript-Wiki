### FDataSourceFilterConfiguration


**属性**:

- `uint8 FilterApplyingTickInterval [Interval, in frames, between applying the filter. The resulting value is cached for intermediate frames.]`
- `bool bCanRunAsynchronously [Flag whether or not this filter does not rely on gamethread only data, and therefore can work on a differen thread]`
- `bool bOnlyApplyDuringActorSpawn [Flag whether or not this filter should only applied once, whenever an actor is spawned]`


**方法**:

- `FDataSourceFilterConfiguration& opAssign(FDataSourceFilterConfiguration Other)`

---

