### UBTDecorator_Loop


Loop decorator node.
A decorator node that bases its condition on whether its loop counter has been exceeded.

**属性**:

- `FValueOrBBKey_Float InfiniteLoopTimeoutTime [timeout (when looping infinitely, when we finish a loop we will check whether we have spent this time looping, if we have we will stop looping). A negative value means loop forever.]`
- `FValueOrBBKey_Int32 NumLoops [number of executions]`
- `bool bInfiniteLoop [infinite loop]`

---

