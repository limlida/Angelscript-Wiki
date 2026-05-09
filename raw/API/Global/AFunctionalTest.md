### AFunctionalTest


**属性**:

- `FString Author [The owner is the group or person responsible for the test. Generally you should use a group name
like 'Editor' or 'Rendering'. When a test fails it may not be obvious who should investigate
so this provides a associate responsible groups with tests.]`
- `FString Description [A description of the test, like what is this test trying to determine.]`
- `EFunctionalTestLogHandling LogErrorHandling [Determines how LogErrors are handled during this test.]`
- `EFunctionalTestLogHandling LogWarningHandling [Determines how LogWarnings are handled during this test.]`
- `AActor ObservationPoint [Allows you to specify another actor to view the test from.  Usually this is a camera you place
in the map to observe the test.  Not useful when running on a build farm, but provides a handy
way to observe the test from a different location than you place the functional test actor.]`
- `FFunctionalTestEventSignature OnTestFinished [Called when the test is finished. Use it to clean up]`
- `FFunctionalTestEventSignature OnTestPrepare [Called when the test is ready to prepare]`
- `FFunctionalTestEventSignature OnTestStart [Called when the test is started]`
- `FName PersistentLevelName [Name of the persistent level to run the test from.]`
- `float32 PreparationTimeLimit [The Test's time limit for preparation, this is the time it has to return true when checking IsReady(). '0' means no limit.]`
- `FRandomStream RandomNumbersStream [A random number stream that you can use during testing.  This number stream will be consistent
every time the test is run.]`
- `EFunctionalTestResult Result []`
- `FString TestLabel []`
- `FString TestTags [Tags describing this test separated by square brackets, such as '[dog]' or '[cat]' or '[Graphics][prio0][unstable]'.
Tags can be used to run subsets of tests, or to categorize data in test reports.
Deprecating, please use "Edit Test Tags" instead.]`
- `float32 TimeLimit [Test's time limit. '0' means no limit]`
- `FText TimesUpMessage`
- `EFunctionalTestResult TimesUpResult [If test is limited by time this is the result that will be returned when time runs out]`
- `float32 TotalTime []`
- `bool bIsEnabled [Allows a test to be disabled.  If a test is disabled, it will not appear in the set of
runnable tests (after saving the map).]`
- `bool bIsInSublevel [Allows a test to be enabled only if loaded from the specified persistent level; avoiding other levels to run the test.]`
- `bool bShouldDelayGarbageCollection [Allows for garbage collection to be delayed. If delayed, garbage collection will be triggered at the end of a test run]`


**方法**:

- `AddError(FString Message)`
- `AddInfo(FString Message)`
- `AddRerun(FName Reason)`  
  Causes the test to be rerun for a specific named reason.
- `AddWarning(FString Message)`
- `bool AssertEqual_Bool(bool Actual, bool Expected, FString What, const UObject ContextObject = nullptr)`  
  Assert that two bools are equal
@param What   A name to use in the message if the assert fails (What: expected {Actual} to be Equal To {Expected} for context '')
- `bool AssertEqual_Box2D(FBox2D Actual, FBox2D Expected, FString What, float32 Tolerance = 0.000100, const UObject ContextObject = nullptr)`  
  Assert that two two-component boxes are (memberwise) equal within a small tolerance.
@param What  A name to use in the message if the assert fails ("Expected 'What' to be {Expected} but it was {Actual} for context ''")
- `bool AssertEqual_Double(float Actual, float Expected, FString What, float Tolerance = 0.000100, const UObject ContextObject = nullptr)`  
  Assert that two double are equal within tolerance between two doubles.
@param What  A name to use in the message if the assert fails (What: expected {Actual} to be Equal To {Expected} within Tolerance for context '')
- `bool AssertEqual_Float(float32 Actual, float32 Expected, FString What, float32 Tolerance = 0.000100, const UObject ContextObject = nullptr)`  
  Assert that two floats are equal within tolerance between two floats.
@param What  A name to use in the message if the assert fails (What: expected {Actual} to be Equal To {Expected} within Tolerance for context '')
- `bool AssertEqual_Int(int Actual, int Expected, FString What, const UObject ContextObject = nullptr)`  
  Assert that two ints are equal
@param What   A name to use in the message if the assert fails (What: expected {Actual} to be Equal To {Expected} for context '')
- `bool AssertEqual_Matrix(FMatrix Actual, FMatrix Expected, FString What, float32 Tolerance = 0.000100, const UObject ContextObject = nullptr)`  
  Assert that two 4x4 matrices are (memberwise) equal within a small tolerance.
@param What  A name to use in the message if the assert fails ("Expected 'What' to be {Expected} but it was {Actual} for context ''")
- `bool AssertEqual_Name(FName Actual, FName Expected, FString What, const UObject ContextObject = nullptr)`  
  Assert that two FNames are equal
@param What   A name to use in the message if the assert fails (What: expected {Actual} to be Equal To {Expected} for context '')
- `bool AssertEqual_Object(UObject Actual, UObject Expected, FString What, const UObject ContextObject = nullptr)`  
  Assert that two Objects are equal
@param What   A name to use in the message if the assert fails (What: expected {Actual} to be Equal To {Expected} for context '')
- `bool AssertEqual_Plane(FPlane Actual, FPlane Expected, FString What, float32 Tolerance = 0.000100, const UObject ContextObject = nullptr)`  
  Assert that two planes are (memberwise) equal within a small tolerance.
@param What  A name to use in the message if the assert fails ("Expected 'What' to be {Expected} but it was {Actual} for context ''")
- `bool AssertEqual_Quat(FQuat Actual, FQuat Expected, FString What, float32 Tolerance = 0.000100, const UObject ContextObject = nullptr)`  
  Assert that two quats are (memberwise) equal within a small tolerance.
@param What  A name to use in the message if the assert fails ("Expected 'What' to be {Expected} but it was {Actual} for context ''")
- `bool AssertEqual_Rotator(FRotator Actual, FRotator Expected, FString What, float32 Tolerance = 0.000100, const UObject ContextObject = nullptr)`  
  Assert that the component angles of two rotators are all equal within a small tolerance.
@param What  A name to use in the message if the assert fails ("Expected 'What' to be {Expected} but it was {Actual} for context ''")
- `bool AssertEqual_RotatorOrientation(FRotator Actual, FRotator Expected, FString What, float32 Tolerance = 0.000100, const UObject ContextObject = nullptr)`  
  Assert that the orientation of two rotators is the same within a small tolerance. Robust to quaternion singularities where angles can differ despite having an identical orientation.
@param What  A name to use in the message if the assert fails ("Expected 'What' to be {Expected} but it was {Actual} for context ''")
- `bool AssertEqual_String(FString Actual, FString Expected, FString What, const UObject ContextObject = nullptr)`  
  Assert that two Strings are equal.
@param What  A name to use in the message if the assert fails ("Expected 'What' to be {Expected} but it was {Actual} for context ''")
- `bool AssertEqual_TraceQueryResults(const UTraceQueryTestResults Actual, const UTraceQueryTestResults Expected, FString What, const UObject ContextObject = nullptr)`  
  Assert that two TraceQueryResults are equal.
@param What   A name to use in the message if the assert fails ("Expected 'What' not to be {Expected} but it was {Actual} for context ''")
- `bool AssertEqual_Transform(FTransform Actual, FTransform Expected, FString What, float32 Tolerance = 0.000100, const UObject ContextObject = nullptr)`  
  Assert that two transforms are (components memberwise - translation, rotation, scale) equal within a small tolerance.
@param What  A name to use in the message if the assert fails ("Expected 'What' to be {Expected} but it was {Actual} for context ''")
- `bool AssertEqual_Vector(FVector Actual, FVector Expected, FString What, float32 Tolerance = 0.000100, const UObject ContextObject = nullptr)`  
  Assert that two vectors are (memberwise) equal within a small tolerance.
@param What  A name to use in the message if the assert fails ("Expected 'What' to be {Expected} but it was {Actual} for context ''")
- `bool AssertEqual_Vector2D(FVector2D Actual, FVector2D Expected, FString What, float32 Tolerance = 0.000100, const UObject ContextObject = nullptr)`  
  Assert that two two-component vectors are (memberwise) equal within a small tolerance.
@param What  A name to use in the message if the assert fails ("Expected 'What' to be {Expected} but it was {Actual} for context ''")
- `bool AssertEqual_Vector4(FVector4 Actual, FVector4 Expected, FString What, float32 Tolerance = 0.000100, const UObject ContextObject = nullptr)`  
  Assert that two four-component vectors are (memberwise) equal within a small tolerance.
@param What  A name to use in the message if the assert fails ("Expected 'What' to be {Expected} but it was {Actual} for context ''")
- `bool AssertFalse(bool Condition, FString Message, const UObject ContextObject = nullptr)`  
  Assert that a boolean value is false.
@param Message       The message to display if the assert fails ("Assertion Failed: 'Message' for context ''")
- `bool AssertIsValid(UObject Object, FString Message, const UObject ContextObject = nullptr)`  
  Assert that a UObject is valid
@param Message       The message to display if the object is invalid ("Invalid object: 'Message' for context ''")
- `bool AssertNotEqual_Box2D(FBox2D Actual, FBox2D NotExpected, FString What, const UObject ContextObject = nullptr)`  
  Assert that two two-component boxes are (memberwise) not equal within a small tolerance.
@param What  A name to use in the message if the assert fails ("Expected 'What' not to be {Expected} but it was {Actual} for context ''")
- `bool AssertNotEqual_Matrix(FMatrix Actual, FMatrix NotExpected, FString What, const UObject ContextObject = nullptr)`  
  Assert that two 4x4 matrices are (memberwise) not equal within a small tolerance.
@param What  A name to use in the message if the assert fails ("Expected 'What' not to be {Expected} but it was {Actual} for context ''")
- `bool AssertNotEqual_Plane(FPlane Actual, FPlane NotExpected, FString What, const UObject ContextObject = nullptr)`  
  Assert that two planes are (memberwise) not equal within a small tolerance.
@param What  A name to use in the message if the assert fails ("Expected 'What' not to be {Expected} but it was {Actual} for context ''")
- `bool AssertNotEqual_Quat(FQuat Actual, FQuat NotExpected, FString What, const UObject ContextObject = nullptr)`  
  Assert that two quats are (memberwise) not equal within a small tolerance.
@param What  A name to use in the message if the assert fails ("Expected 'What' not to be {Expected} but it was {Actual} for context ''")
- `bool AssertNotEqual_Rotator(FRotator Actual, FRotator NotExpected, FString What, const UObject ContextObject = nullptr)`  
  Assert that the component angles of two rotators are all not equal within a small tolerance.
@param What  A name to use in the message if the assert fails ("Expected 'What' not to be {Expected} but it was {Actual} for context ''")
- `bool AssertNotEqual_String(FString Actual, FString NotExpected, FString What, const UObject ContextObject = nullptr)`  
  Assert that two Strings are not equal.
@param What  A name to use in the message if the assert fails ("Expected 'What' not to be {Expected} but it was {Actual} for context ''")
- `bool AssertNotEqual_Transform(FTransform Actual, FTransform NotExpected, FString What, const UObject ContextObject = nullptr)`  
  Assert that two transforms are (components memberwise - translation, rotation, scale) not equal within a small tolerance.
@param What  A name to use in the message if the assert fails ("Expected 'What' not to be {Expected} but it was {Actual} for context ''")
- `bool AssertNotEqual_Vector(FVector Actual, FVector NotExpected, FString What, const UObject ContextObject = nullptr)`  
  Assert that two vectors are (memberwise) not equal within a small tolerance.
@param What  A name to use in the message if the assert fails ("Expected 'What' not to be {Expected} but it was {Actual} for context ''")
- `bool AssertNotEqual_Vector2D(FVector2D Actual, FVector2D NotExpected, FString What, const UObject ContextObject = nullptr)`  
  Assert that two two-component vectors are (memberwise) not equal within a small tolerance.
@param What  A name to use in the message if the assert fails ("Expected 'What' not to be {Expected} but it was {Actual} for context ''")
- `bool AssertNotEqual_Vector4(FVector4 Actual, FVector4 NotExpected, FString What, const UObject ContextObject = nullptr)`  
  Assert that two four-component vectors are (memberwise) not equal within a small tolerance.
@param What  A name to use in the message if the assert fails ("Expected 'What' not to be {Expected} but it was {Actual} for context ''")
- `bool AssertTrue(bool Condition, FString Message, const UObject ContextObject = nullptr)`  
  Assert that a boolean value is true.
@param Message       The message to display if the assert fails ("Assertion Failed: 'Message' for context ''")
- `bool AssertValue_DateTime(FDateTime Actual, EComparisonMethod ShouldBe, FDateTime Expected, FString What, const UObject ContextObject = nullptr)`  
  Assert on a relationship between two DateTimes.
@param What  A name to use in the message if the assert fails (What: expected {Actual} to be <ShouldBe> {Expected} for context '')
- `bool AssertValue_Double(float Actual, EComparisonMethod ShouldBe, float Expected, FString What, const UObject ContextObject = nullptr)`  
  Assert on a relationship between two doubles.
@param What  A name to use in the message if the assert fails (What: expected {Actual} to be <ShouldBe> {Expected} for context '')
- `bool AssertValue_Float(float32 Actual, EComparisonMethod ShouldBe, float32 Expected, FString What, const UObject ContextObject = nullptr)`  
  Assert on a relationship between two floats.
@param What  A name to use in the message if the assert fails (What: expected {Actual} to be <ShouldBe> {Expected} for context '')
- `bool AssertValue_Int(int Actual, EComparisonMethod ShouldBe, int Expected, FString What, const UObject ContextObject = nullptr)`  
  Assert on a relationship between two integers.
@param What  A name to use in the message if the assert fails (What: expected {Actual} to be <ShouldBe> {Expected} for context '')
- `TArray<AActor> DebugGatherRelevantActors() const`  
  Used by debug drawing to gather actors this test is using and point at them on the level to better understand test's setup
- `FinishTest(EFunctionalTestResult TestResult, FString Message)`
- `FName GetCurrentRerunReason() const`  
  Returns the current re-run reason if we're in a named re-run.
- `bool IsEnabled() const`
- `bool IsEnabledInWorld(const UWorld World) const`
- `bool IsReady()`  
  IsReady() is called once per frame after a test is run, until it returns true.  You should use this function to
delay Start being called on the test until preconditions are met.
- `bool IsRunning() const`  
  AActor interface end
- `LogMessage(FString Message)`
- `FString OnAdditionalTestFinishedMessageRequest(EFunctionalTestResult TestResult) const`
- `bool OnWantsReRunCheck() const`  
  retrieves information whether test wants to have another run just after finishing
- `PrepareTest()`  
  Prepare Test is fired once the test starts up, before the test IsReady() and thus before Start Test is called.
So if there's some initial conditions or setup that you might need for your IsReady() check, you might want
to do that here.
- `StartTest()`  
  Called once the IsReady() check for the test returns true.  After that happens the test has Officially started,
and it will begin receiving Ticks in the blueprint.
- `TestFinished()`  
  Called during FinishTest().  Allows for clean-up on the blueprint side, so that the user can bring the test
back to its default state, making it ready for the next one.
- `RegisterAutoDestroyActor(AActor ActorToAutoDestroy)`  
  Actors registered this way will be automatically destroyed (by limiting their lifespan)
    on test finish
- `SetConsoleVariable(FString Name, FString InValue)`  
  Sets the CVar from the given input. Variable gets reset after the test.
- `SetConsoleVariableFromBoolean(FString Name, bool InValue)`  
  Sets the CVar from the given input. Variable gets reset after the test.
- `SetConsoleVariableFromFloat(FString Name, float32 InValue)`  
  Sets the CVar from the given input. Variable gets reset after the test.
- `SetConsoleVariableFromInteger(FString Name, int InValue)`  
  Sets the CVar from the given input. Variable gets reset after the test.
- `SetTimeLimit(float32 NewTimeLimit, EFunctionalTestResult ResultWhenTimeRunsOut)`

---

