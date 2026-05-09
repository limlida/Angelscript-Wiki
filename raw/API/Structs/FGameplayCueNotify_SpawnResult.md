### FGameplayCueNotify_SpawnResult


FGameplayCueNotify_SpawnResult

    Temporary structure used to track results of spawning components.

**属性**:

- `TArray<TObjectPtr<UAudioComponent>> AudioComponents [List of audio components spawned.  There may be null pointers here as it matches the defined order.]`
- `TArray<TObjectPtr<UCameraShakeBase>> CameraShakes [List of camera shakes played.  There will be one camera shake per local player controller if shake is played in world.]`
- `UDecalComponent DecalComponent [Spawned decal component.  This may be null.]`
- `UForceFeedbackComponent ForceFeedbackComponent [Force feedback component that was spawned.  This is only valid when force feedback is set to play in world.]`
- `TArray<TObjectPtr<UFXSystemComponent>> FxSystemComponents [List of FX components spawned.  There may be null pointers here as it matches the defined order.]`


**方法**:

- `FGameplayCueNotify_SpawnResult& opAssign(FGameplayCueNotify_SpawnResult Other)`

---

