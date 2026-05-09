### ULatentAutomationCommand


**属性**:

- `bool bAllowTimeout []`
- `bool bAlsoRunOnClient []`


**方法**:

- `FIntegrationTest& GetCurrentTest()`  
  Retrieves the current test. You can only call this after the command has been
passed to T.AddLatentAutomationCommand() or after SetCurrentTest has been called.
- `SetCurrentTest(FIntegrationTest& T)`  
  Retrieves the client executor or null if it's not a client test. Clients only
have access to the client executor rather than the test itself.
- `ALatentAutomationCommandClientExecutor GetClientExecutor()`  
  Use this for commands that are not added with AddLatentAutomationCommand.
This could be the case if a latent command is a child to another command.

- `After()`
- `bool AfterOnClient()`
- `Before()`
- `bool BeforeOnClient()`
- `FString Describe() const`
- `FString DescribeOnClient() const`
- `bool HasAuthority() const`
- `bool Update()`
- `bool UpdateOnClient()`

---

