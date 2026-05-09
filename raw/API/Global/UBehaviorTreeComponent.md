### UBehaviorTreeComponent


**属性**:

- `UBehaviorTree DefaultBehaviorTreeAsset [data asset defining the tree]`


**方法**:

- `AddCooldownTagDuration(FGameplayTag CooldownTag, float32 CooldownDuration, bool bAddToExistingDuration)`  
  add to the cooldown tag's duration
- `float GetTagCooldownEndTime(FGameplayTag CooldownTag) const`  
  @return the cooldown tag end time, 0.0f if CooldownTag is not found
- `SetDynamicSubtree(FGameplayTag InjectTag, UBehaviorTree BehaviorAsset)`  
  assign subtree to RunBehaviorDynamic task specified by tag.

---

