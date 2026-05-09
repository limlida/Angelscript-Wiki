### FAnimNotifyEvent


Triggers an animation notify.  Each AnimNotifyEvent contains an AnimNotify object
which has its Notify method called and passed to the animation.

**属性**:

- `EAnimLinkMethod LinkMethod [The method we are using to calculate our times]`
- `EMontageNotifyTickType MontageTickType`
- `UAnimNotify Notify`
- `int NotifyFilterLOD [LOD to start filtering this notify from.]`
- `ENotifyFilterType NotifyFilterType [Defines a method for filtering notifies (stopping them triggering) e.g. by looking at the meshes current LOD]`
- `FName NotifyName`
- `UAnimNotifyState NotifyStateClass`
- `float32 NotifyTriggerChance [Defines the chance of this notify triggering, 0 = No Chance, 1 = Always triggers]`
- `int SlotIndex [The slot index we are currently using within LinkedMontage]`
- `float32 TriggerWeightThreshold`
- `bool bCanBeFilteredViaRequest [Allow notify event to be filtered if requested at runtime (e. g. via an Anim Graph Message)]`
- `bool bTriggerOnDedicatedServer [If disabled this notify will be skipped on dedicated servers]`
- `bool bTriggerOnFollower [If enabled this notify will trigger when the animation is a follower in a sync group (by default only the sync group leaders notifies trigger]`


**方法**:

- `FAnimNotifyEvent& opAssign(FAnimNotifyEvent Other)`

---

