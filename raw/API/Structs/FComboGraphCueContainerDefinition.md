### FComboGraphCueContainerDefinition


Struct defining a list of gameplay tags, and optional source object to pass arbitrary data to GameplayCues (in GameplayCueParameters' SourceObject)

**属性**:

- `TSoftObjectPtr<UParticleSystem> CascadeSystem [A particle system (Cascade) that if defined will be passed down to Gameplay Cues as SourceObject and available in params]`
- `EComboGraphCueSourceObjectType CueSourceObjectType [Specify here which type of SourceObject you'd like to pass down to GameplayCues.

Allows to pass arbitrary data down to GameplayCues, made available in GameplayCueParameters' Effect Context.

Example usage: Pass down a Niagara Emitter or Cascade Particle System, or SoundCues.]`
- `FGameplayTagContainer GameplayCueTags [Tags passed to the gameplay cue handler when this cue container is activated (multiple tags if matching valid gameplay cues will invoke them individually)]`
- `TSoftObjectPtr<UNiagaraSystem> NiagaraSystem [A particle system (Niagara) that if defined will be passed down to Gameplay Cues as SourceObject and available in params]`
- `TSoftObjectPtr<USoundBase> SoundEffect [The Sound to play (Cue, Wave, ...) that if defined will be passed down to Gameplay Cues as SourceObject and available in params]`


**方法**:

- `FComboGraphCueContainerDefinition& opAssign(FComboGraphCueContainerDefinition Other)`

---

