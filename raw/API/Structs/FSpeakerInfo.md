### FSpeakerInfo


Represents the configuration for a speaker in this dialogue

**属性**:

- `UNarrativeDialogueSequence DefaultSpeakerShot [Sequence to use whenever this speaker is talking (will be overriden by shot set on line)]`
- `UNPCDefinition NPCDataAsset [The speakers NPC data asset - if this is set to something, we'll use the NPC subsystem to grab this speaker.]`
- `FLinearColor NodeColor [Custom node colour for this NPC in the graph]`
- `FGameplayTagContainer OwnedTags [Tags to apply to this speaker for the duration of the dialogue]`
- `TWeakObjectPtr<AActor> SpeakerAvatar [Cached ref to this speakers avatar.]`
- `FTransform SpeakerAvatarTransform [The transform for the SpeakerActor that gets spawned in, if one is set.]`
- `FName SpeakerID [The name of this speaker. This is driven by the NPC Data Assets ID in NPro.]`


**方法**:

- `FSpeakerInfo& opAssign(FSpeakerInfo Other)`

---

