### AGameplayCueNotify_Actor


An instantiated Actor that acts as a handler of a GameplayCue. Since they are instantiated, they can maintain state and tick/update every frame if necessary.

**属性**:

- `float32 AutoDestroyDelay [If bAutoDestroyOnRemove is true, the actor will stay alive for this many seconds before being auto destroyed.]`
- `FGameplayTag GameplayCueTag [Tag this notify is activated by]`
- `bool IsOverride [Does this Cue override other cues, or is it called in addition to them? E.g., If this is Damage.Physical.Slash, we wont call Damage.Physical afer we run this cue.]`
- `int NumPreallocatedInstances [How many instances of the gameplay cue to preallocate]`
- `bool WarnIfLatentActionIsStillRunning [Warn if we have a latent action (delay, etc) running when we cleanup this gameplay cue (we will kill the latent action either way)]`
- `bool WarnIfTimelineIsStillRunning [Warn if we have a timeline running when we cleanup this gameplay cue (we will kill the timeline either way)]`
- `bool bAllowMultipleOnActiveEvents [Does this cue trigger its On Burst event if it's already been triggered?
This can occur when the associated tag is triggered by multiple sources and there is no unique instancing.]`
- `bool bAllowMultipleWhileActiveEvents [Does this cue trigger its On Become Relevant event if it's already been triggered?
This can occur when the associated tag is triggered by multiple sources and there is no unique instancing.]`
- `bool bAutoAttachToOwner [If true, attach this GameplayCue Actor to the target actor while it is active. Attaching is slightly more expensive than not attaching, so only enable when you need to.]`
- `bool bAutoDestroyOnRemove [We will auto destroy (recycle) this GameplayCueActor when the OnRemove event fires (after OnRemove is called).]`
- `bool bUniqueInstancePerInstigator [Does this cue get a new instance for each instigator? For example if two instigators apply a GC to the same source, do we create two of these GameplayCue Notify actors or just one?
If the notify is simply playing FX or sounds on the source, it should not need unique instances. If this Notify is attaching a beam from the instigator to the target, it does need a unique instance per instigator.]`
- `bool bUniqueInstancePerSourceObject [Does this cue get a new instance for each source object? For example if two source objects apply a GC to the same source, do we create two of these GameplayCue Notify actors or just one?
If the notify is simply playing FX or sounds on the source, it should not need unique instances. If this Notify is attaching a beam from the source object to the target, it does need a unique instance per instigator.]`


**方法**:

- `EndGameplayCue()`  
  Ends the gameplay cue: either destroying it or recycling it. You must call this manually only if you do not use bAutoDestroyOnRemove/AutoDestroyDelay
- `HandleGameplayCue(AActor MyTarget, EGameplayCueEvent EventType, FGameplayCueParameters Parameters)`  
  Generic Event Graph event that will get called for every event type
- `bool OnBurst(AActor MyTarget, FGameplayCueParameters Parameters)`  
  Called when a GameplayCue with duration is first activated, this will only be called if the client witnessed the activation
- `bool OnExecute(AActor MyTarget, FGameplayCueParameters Parameters)`  
  Called when a GameplayCue is executed, this is used for instant effects or periodic ticks
- `bool OnCeaseRelevant(AActor MyTarget, FGameplayCueParameters Parameters)`  
  Called when a GameplayCue with duration is removed
- `bool OnBecomeRelevant(AActor MyTarget, FGameplayCueParameters Parameters)`  
  Called when a GameplayCue with duration is first seen as active, even if it wasn't actually just applied (Join in progress, etc)

---

