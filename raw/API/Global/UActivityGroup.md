### UActivityGroup


Groups activities so we can filter out invalid ones early

**属性**:

- `TArray<TObjectPtr<UNPCActivity>> GroupActivities [Activities in the group]`
- `FGameplayTag GroupTag [An optional tag, can be used to grab the group in case you want to add/remove an activity from it.]`
- `UNPCActivityComponent OwnerActivityComp [Owner comp, cached]`
- `ANarrativeNPCController OwnerController [Our controller, cached]`
- `TArray<TObjectPtr<UActivityGroup>> Subgroups [Subgroups of the group]`
- `TSubclassOf<UNPCGoalItem> SupportedGoal [The goals this group supports. This is useful to "early out", ie don't check the group unless we have a goal of this type.]`


**方法**:

- `bool CanUseGroup(FString& FailReason) const`  
  Define whether or not this group is usable. can optionally use FailReason to define why it failed

---

