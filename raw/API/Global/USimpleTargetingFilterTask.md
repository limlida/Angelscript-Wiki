### USimpleTargetingFilterTask


@class USimpleTargetingSelectionTask

This is a blueprintable TargetingTask class made for filtering out Targets from the results list.
Override the ShouldRemoveTarget Blueprint Function to define the rules for this filter.

**方法**:

- `bool ShouldFilterTarget(FTargetingRequestHandle TargetingHandle, FTargetingDefaultResultData TargetData) const`  
  Returns true if a Target should be removed from the results of this TargetingRequest

---

