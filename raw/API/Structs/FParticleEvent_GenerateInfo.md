### FParticleEvent_GenerateInfo


**属性**:

- `FName CustomName [Should the event tag with a custom name? Leave blank for the default.]`
- `bool FirstTimeOnly [Only fire the first time (collision only).]`
- `int Frequency [How often to trigger the event (<= 1 means EVERY time).]`
- `bool LastTimeOnly [Only fire the last time (collision only).]`
- `int ParticleFrequency [Only fire the first time (collision only).]`
- `TArray<TObjectPtr<UParticleModuleEventSendToGame>> ParticleModuleEventsToSendToGame [The events we want to fire off when this event has been generated]`
- `EParticleEventType Type [The type of event.]`
- `bool UseReflectedImpactVector [Use the impact FVector not the hit normal (collision only).]`
- `bool bUseOrbitOffset [Use the orbit offset when computing the position at which the event occurred.]`


**方法**:

- `FParticleEvent_GenerateInfo& opAssign(FParticleEvent_GenerateInfo Other)`

---

