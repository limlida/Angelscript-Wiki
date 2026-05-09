### URigVMHost


**属性**:

- `TArray<TObjectPtr<UAssetUserData>> AssetUserData [Array of user data stored with the asset]`
- `TArray<TObjectPtr<UAssetUserData>> AssetUserDataEditorOnly [Array of user data stored with the asset]`


**方法**:

- `bool CanExecute() const`  
  Is valid for execution
- `bool Execute(FName InEventName)`  
  Execute
- `bool ExecuteEvent(FName InEventName)`  
  Execute a user defined event
- `float32 GetAbsoluteTime() const`  
  Gets the current absolute time
- `float32 GetCurrentFramesPerSecond() const`  
  Returns the current frames per second (this may change over time)
- `float32 GetDeltaTime() const`  
  Gets the current delta time
- `TArray<FName> GetScriptAccessibleVariables() const`  
  Returns the names of variables accessible in scripting
- `TArray<FName> GetSupportedEvents() const`
- `FString GetVariableAsString(FName InVariableName) const`  
  Returns the value of a given variable as a string
- `FName GetVariableType(FName InVariableName) const`  
  Returns the type of a given variable
- `URigVM GetVM()`
- `bool IsInitRequired() const`  
  Returns true if this host requires the VM memory to be initialized
- `bool RemoveRunOnceEvent(FName InEventName)`  
  Removes an event running once
- `RequestInit()`  
  Requests to perform an init during the next execution
- `RequestRunOnceEvent(FName InEventName, int InEventIndex = - 1)`  
  Requests to run an event once
@param InEventName The event to run
@param InEventIndex Deprecated argument. Not used.
- `SetAbsoluteAndDeltaTime(float32 InAbsoluteTime, float32 InDeltaTime)`  
  Set the current absolute and delta times
- `SetAbsoluteTime(float32 InAbsoluteTime, bool InSetDeltaTimeZero = false)`  
  Set the current absolute time
- `SetDeltaTime(float32 InDeltaTime)`  
  Set the current delta time
- `SetFramesPerSecond(float32 InFramesPerSecond)`  
  Set the current fps
- `bool SetVariableFromString(FName InVariableName, FString InValue)`  
  Returns the value of a given variable as a string
- `bool SupportsEvent(FName InEventName) const`

---

