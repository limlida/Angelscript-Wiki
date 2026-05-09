### UMassEnvQueryGenerator_MassEntityHandles


Generator to be sent to MassEQSSubsystem for processing on Mass.
This will Generate UEnvQueryItemType_MassEntityHandles within SearchRadius of any ContextPositions.
Set SearchRadius to a value <= 0 in order to get all EntityHandles who have an FTransformFragment.

**属性**:

- `TSubclassOf<UEnvQueryContext> SearchCenter [Context of query]`
- `FAIDataProviderFloatValue SearchRadius [Any Entity who is within SearchRadius of any SearchCenter will be acquired]`

---

