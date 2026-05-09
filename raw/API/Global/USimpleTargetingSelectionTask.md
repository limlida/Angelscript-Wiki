### USimpleTargetingSelectionTask


@class USimpleTargetingSelectionTask

This is a blueprintable TargetingTask class made for adding new Targets to the results list.
Override the SelectTargets function and call AddTargetHitResult or AddTargetActor to select new targets.

**方法**:

- `bool AddHitResult(FTargetingRequestHandle TargetingHandle, FHitResult HitResult) const`  
  Adds a HitResult to the Targeting Results for a given TargetingRequestHandle.
Returns False when the Actor that was hit was already in the list
- `bool AddTargetActor(FTargetingRequestHandle TargetingHandle, AActor Actor) const`  
  Adds a single Actor to the Targeting Results for a given TargetingRequestHandle.
Returns false when the Actor was already in the list.

NOTE: If you have a HitResult associated with this selection, please use AddHitResult instead.
- `SelectTargets(FTargetingRequestHandle TargetingHandle, FTargetingSourceContext SourceContext) const`

---

