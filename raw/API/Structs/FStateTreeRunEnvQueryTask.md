### FStateTreeRunEnvQueryTask


Task that runs an async environment query and outputs the result to an outside parameter. Supports Actor and vector types EQS.
The task is usually run in a sibling state to the result user will be with the data being stored in the parent state's parameters.
- Parent (Has an EQS result parameter)
     - Run Env Query (If success go to Use Query Result)
     - Use Query Result

**属性**:

- `FName Name [Name of the node.]`


**方法**:

- `FStateTreeRunEnvQueryTask& opAssign(FStateTreeRunEnvQueryTask Other)`

---

