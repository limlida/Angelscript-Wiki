### UTargetingSubsystem


@class UTargetingSubsystem

The Targeting Subsystem is the entry point for users to initiate targeting requests.

The entry point to the system is the target request handle. The handle is used to interface with
the targeting data stores. Data stores are templated classes around generic data structs that the
system and tasks use to accomplish a targeting request.

The targeting system has 3 mandatory data stores and 1 required for async targeting request. These
data stores are required to be set up before the system can properly run a targeting request. The
mandatory 3 data stores are FTargetingRequestData, FTargetingTaskSet, and FTargetingSourceContext.
FTargetingAsyncTaskData is implicitly setup when an async targeting request is initiated.

Users can do all the pieces manually in C++ by setting up the required data stores themselves,
or, to have it a bit more automated, the user can use the APIs that utilize UTargetingPreset data asset.

For immediate targeting requests users will call the Execute methods. These functions perform all the
tasks till completion. The system will not go latent.

For async targeting requests users will call the Start Async methods. The system will queue up a targeting
request and as each task is processed the system can run through all the tasks to completion or stop processing
until the next frame while it waits for a task to complete.

Note about Targeting Handles, when a targeting handle is created it will not implicitly release the handle.
It is up to the creator to either grab a Async Task Data or Immediate Task Data and set a flag indicating
the system should do it for them after the callback fires, or it is up to the user to release the handle
when they are done with it.

**方法**:

- `ExecuteTargetingRequest(const UTargetingPreset TargetingPreset, FTargetingSourceContext InSourceContext, FTargetingRequestDynamicDelegate CompletionDynamicDelegate = FTargetingRequestDynamicDelegate ( ))`  
  Method to execute an immediate targeting request based on a gameplay targeting preset.
- `GetTargetingResults(FTargetingRequestHandle TargetingHandle, TArray<FHitResult>& OutTargets) const`  
  Helper method to get the set of hit results for a given targeting handle
- `GetTargetingResultsActors(FTargetingRequestHandle TargetingHandle, TArray<AActor>& Targets) const`  
  Method to get the actor targets from a given targeting request handle
- `FTargetingSourceContext GetTargetingSourceContext(FTargetingRequestHandle TargetingHandle) const`  
  Returns the targeting source context for the targeting request handle
- `RemoveAsyncTargetingRequestWithHandle(FTargetingRequestHandle& TargetingHandle)`  
  Method to remove an async targeting request with a given targeting handle
- `FTargetingRequestHandle StartAsyncTargetingRequest(const UTargetingPreset TargetingPreset, FTargetingSourceContext InSourceContext, FTargetingRequestDynamicDelegate CompletionDynamicDelegate = FTargetingRequestDynamicDelegate ( ))`  
  Method to queue an async targeting request based on a gameplay targeting preset.

---

