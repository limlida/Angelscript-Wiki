### UAnimNotifyState


**属性**:

- `FColor NotifyColor [Color of Notify in editor]`
- `bool bShouldFireInEditor [Whether this notify state instance should fire in animation editors]`


**方法**:

- `float32 GetDefaultTriggerWeightThreshold() const`  
  TriggerWeightThreshold to use when creating notifies of this type
- `FString GetNotifyName() const`  
  Implementable event to get a custom name for the notify
- `bool NotifyBegin(USkeletalMeshComponent MeshComp, UAnimSequenceBase Animation, float TotalDuration, FAnimNotifyEventReference EventReference) const`
- `bool NotifyEnd(USkeletalMeshComponent MeshComp, UAnimSequenceBase Animation, FAnimNotifyEventReference EventReference) const`
- `bool NotifyTick(USkeletalMeshComponent MeshComp, UAnimSequenceBase Animation, float FrameDeltaTime, FAnimNotifyEventReference EventReference) const`

---

