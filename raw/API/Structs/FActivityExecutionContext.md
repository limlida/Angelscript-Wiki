### FActivityExecutionContext


Because activities can be executed from many different sources, we pass a child of this struct along as context when we run an activity so we know why the activity is being ran, what thing is trying to run the activity, etc.

**方法**:

- `FActivityExecutionContext& opAssign(FActivityExecutionContext Other)`

---

