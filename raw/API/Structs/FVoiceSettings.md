### FVoiceSettings


**属性**:

- `USoundAttenuation AttenuationSettings [Optional attenuation settings to attach to this player's voice.
This should only be used when ComponentToAttachTo is set.]`
- `USceneComponent ComponentToAttachTo [Optionally attach the voice source to a Scene Component to give the appearance
that the voice is coming from that scene component.
If this is not set, the voice will not be spatialized.]`
- `USoundEffectSourcePresetChain SourceEffectChain [Optional audio effects to apply to this player's voice.]`


**方法**:

- `FVoiceSettings& opAssign(FVoiceSettings Other)`

---

