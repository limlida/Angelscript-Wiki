### ALatentAutomationCommandClientExecutor


ALatentAutomationCommandClientExecutor

Executes a ULatentAutomationCommand on client.

This Actor replicates. The provided ULatentAutomationCommand will be replicated.
When ticking, this Actor will inject a component into the player controller to be
able to synchronize execution between client and server.
This Actor executes the test on client.

The executor will use the different replicated properties to communicate the
different phases of execution from server to client.

**方法**:

- `AssertFalse(bool bExpression, FString Message)`
- `AssertNotNull(const UObject Object, FString Message)`
- `AssertNotSame(const UObject Expected, const UObject Actual, FString Message)`
- `AssertNull(const UObject Object, FString Message)`
- `AssertSame(const UObject Expected, const UObject Actual, FString Message)`
- `AssertTrue(bool bExpression, FString Message)`
- `Fail(FString Message)`  
  Client functions
- `ServerAssertFalse(bool bExpression, FString Message)`
- `ServerAssertNotNull(const UObject Object, FString Message)`
- `ServerAssertNotSame(const UObject Expected, const UObject Actual, FString Message)`
- `ServerAssertNull(const UObject Object, FString Message)`
- `ServerAssertSame(const UObject Expected, const UObject Actual, FString Message)`
- `ServerAssertTrue(bool bExpression, FString Message)`
- `ServerFail(FString Message)`
- `ServerLatentCommandClientChecked()`
- `ServerLatentCommandClientDone()`
- `ServerLatentCommandClientReady()`
- `ServerLatentCommandDescribeOnClient(FString NewDescription)`

---

