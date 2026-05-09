### USimpleTargetingSortTask


@class USimpleTargetingSortTask

This is a blueprintable TargetingTask class made for reordering Targets in the results list.
Override the GetScoreForTarget Blueprint Function to provide a score for each element and then Targets will be
sorted by score.

**方法**:

- `float32 GetScoreForTarget(FTargetingRequestHandle TargetingHandle, FTargetingDefaultResultData TargetData) const`  
  Called on every target to get a Score for sorting. This score will be added to the Score float in FTargetingDefaultResultData

---

