### UNavigationPath


UObject wrapper for FNavigationPath

**属性**:

- `TArray<FVector> PathPoints []`
- `FOnNavigationPathUpdated PathUpdatedNotifier`
- `ENavigationOptionFlag RecalculateOnInvalidation []`


**方法**:

- `EnableDebugDrawing(bool bShouldDrawDebugData, FLinearColor PathColor = FLinearColor ( 1.000000 , 1.000000 , 1.000000 , 1.000000 ))`
- `EnableRecalculationOnInvalidation(ENavigationOptionFlag DoRecalculation)`  
  if enabled path will request recalculation if it gets invalidated due to a change to underlying navigation
- `FString GetDebugString() const`  
  UObject end
- `float GetPathCost() const`
- `float GetPathLength() const`
- `bool IsPartial() const`
- `bool IsStringPulled() const`
- `bool IsValid() const`

---

