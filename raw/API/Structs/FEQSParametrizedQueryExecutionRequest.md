### FEQSParametrizedQueryExecutionRequest


**属性**:

- `FBlackboardKeySelector EQSQueryBlackboardKey [blackboard key storing an EQS query template]`
- `TArray<FAIDynamicParam> QueryConfig []`
- `UEnvQuery QueryTemplate []`
- `EEnvQueryRunMode RunMode [determines which item will be stored (All = only first matching)]`
- `bool bUseBBKeyForQueryTemplate`


**方法**:

- `FEQSParametrizedQueryExecutionRequest& opAssign(FEQSParametrizedQueryExecutionRequest Other)`

---

