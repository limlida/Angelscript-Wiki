### UGameplayCueNotify_Static


A non instantiated UObject that acts as a handler for a GameplayCue. These are useful for one-off "burst" effects.

**属性**:

- `FGameplayTag GameplayCueTag [Tag this notify is activated by]`
- `bool IsOverride [Does this Cue override other cues, or is it called in addition to them? E.g., If this is Damage.Physical.Slash, we wont call Damage.Physical afer we run this cue.]`


**方法**:

- `HandleGameplayCue(AActor MyTarget, EGameplayCueEvent EventType, FGameplayCueParameters Parameters) const`  
  Generic Event Graph event that will get called for every event type
- `bool OnActive(AActor MyTarget, FGameplayCueParameters Parameters) const`  
  Called when a GameplayCue with duration is first activated, this will only be called if the client witnessed the activation
- `bool OnExecute(AActor MyTarget, FGameplayCueParameters Parameters) const`  
  Called when a GameplayCue is executed, this is used for instant effects or periodic ticks
- `bool OnRemove(AActor MyTarget, FGameplayCueParameters Parameters) const`  
  Called when a GameplayCue with duration is removed
- `bool WhileActive(AActor MyTarget, FGameplayCueParameters Parameters) const`  
  Called when a GameplayCue with duration is first seen as active, even if it wasn't actually just applied (Join in progress, etc)
- `FGameplayTag GetGameplayCueTag() const`

---

