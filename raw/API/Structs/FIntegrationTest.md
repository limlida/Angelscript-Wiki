### FIntegrationTest


**方法**:

- `Fail(FString Message)`
- `AssertTrue(bool Expression, FString Message = "")`
- `AssertFalse(bool Expression, FString Message = "")`
- `AssertNull(const UObject Object, FString Message = "")`
- `AssertNotNull(const UObject Object, FString Message = "")`
- `AssertEquals(int Expected, int Actual, FString Message = "")`
- `AssertEquals(float32 Expected, float32 Actual, FString Message = "")`
- `AssertEquals(float Expected, float Actual, FString Message = "")`
- `AssertEquals(bool Expected, bool Actual, FString Message = "")`
- `AssertEquals(FName Expected, FName Actual, FString Message = "")`
- `AssertEquals(FString Expected, FString Actual, FString Message = "")`
- `AssertEquals(FVector Expected, FVector Actual, FString Message = "")`
- `AssertEquals(FRotator Expected, FRotator Actual, FString Message = "")`
- `AssertEquals(FUniqueNetIdRepl Expected, FUniqueNetIdRepl Actual, FString Message = "")`
- `AssertNotEquals(int Expected, int Actual, FString Message = "")`
- `AssertNotEquals(float32 Expected, float32 Actual, FString Message = "")`
- `AssertNotEquals(float Expected, float Actual, FString Message = "")`
- `AssertNotEquals(bool Expected, bool Actual, FString Message = "")`
- `AssertNotEquals(FName Expected, FName Actual, FString Message = "")`
- `AssertNotEquals(FString Expected, FString Actual, FString Message = "")`
- `AssertNotEquals(FVector Expected, FVector Actual, FString Message = "")`
- `AssertNotEquals(FRotator Expected, FRotator Actual, FString Message = "")`
- `AssertNotEquals(FUniqueNetIdRepl Expected, FUniqueNetIdRepl Actual, FString Message = "")`
- `AssertAlmostEquals(float32 Expected, float32 Actual, float32 AbsError = 0.0001, FString Message = "")`
- `AssertAlmostEquals(float Expected, float Actual, float AbsError = 0.0001, FString Message = "")`
- `AssertLessThan(int Left, int Right, FString Message = "")`
- `AssertLessThan(float32 Left, float32 Right, FString Message = "")`
- `AssertLessThan(float Left, float Right, FString Message = "")`
- `AssertGreaterThan(int Left, int Right, FString Message = "")`
- `AssertGreaterThan(float32 Left, float32 Right, FString Message = "")`
- `AssertGreaterThan(float Left, float Right, FString Message = "")`
- `AssertLessThanOrEqual(int Left, int Right, FString Message = "")`
- `AssertLessThanOrEqual(float32 Left, float32 Right, FString Message = "")`
- `AssertLessThanOrEqual(float Left, float Right, FString Message = "")`
- `AssertGreaterThanOrEqual(int Left, int Right, FString Message = "")`
- `AssertGreaterThanOrEqual(float32 Left, float32 Right, FString Message = "")`
- `AssertGreaterThanOrEqual(float Left, float Right, FString Message = "")`
- `AssertSame(const UObject Expected, const UObject Actual, FString Message = "")`
- `AssertNotSame(const UObject Expected, const UObject Actual, FString Message = "")`
- `AddLatentAutomationCommand(ULatentAutomationCommand LatentCommand, float32 TimeoutSecs = 5.000000)`
- `FString GetParam()`
- `AddExpectedError(FString Regex, int Occurrences = 1)`

---

