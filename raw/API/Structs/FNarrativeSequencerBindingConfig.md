### FNarrativeSequencerBindingConfig


**属性**:

- `ANarrativeCharacter Character [The character we wish to bind into the cinematic.]`
- `FTransform CinematicStartTransform [If set we'll run the character here before we start the cinematic so everything lines up properly. @TODO see if flynn can pull this from the sequence asset automatically.]`
- `FGameplayTagContainer TagsToApplyWhilstBound [We'll apply these tags to the character whilst they are bound into the cinematic. Overrides TagsToApply in base settings.]`


**方法**:

- `FNarrativeSequencerBindingConfig& opAssign(FNarrativeSequencerBindingConfig Other)`

---

