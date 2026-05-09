### UNarrativeAnimInstance


Narrative anim instance class

**属性**:

- `FGameplayTagContainer ApplyTags [These tags will be applied to the character running this animation blueprint whilst it is on them]`
- `FGameplayTag CurrentOverrideLayer [The tag identifying the current override layer]`
- `FQuat DirectionToLedge []`
- `FGameplayTagBlueprintPropertyMap GameplayTagPropertyMap [Brilliant container type that ships with GAS - lets us bind variables directly to gameplaytags.]`
- `FGameplayTag LastOverrideLayer [The tag identifying the last override layer we had on - added this in case we need to check for whatever reason]`
- `FVector LocalLedgeLocation []`
- `ANarrativeCharacter NarrativeCharacterRef [Owning narrative character]`
- `float32 OverrideLayerBlendInTime [The time we want to blend the override layer in over]`
- `float32 OverrideLayerBlendOutTime [The time we want to blend the override layer out over]`
- `FPoseSnapshot SequencerPoseSnapshot [The last frame of our character in sequencer. Its up to the ABP to blend back in from this snapshot if bWantsBlendOutOfSequencer is true.]`
- `TMap<FGameplayTag,TObjectPtr<UNarrativeAnimSet>> TaggedAnimSets [Tagged animsets - this lets us have a generic, extensible, and BP friendly way of mapping tags to Combo Sets.]`
- `TMap<FGameplayTag,TSubclassOf<UAnimInstance>> TaggedOverrideLayers [Tagged override layers - this lets us have a generic, extensible, and BP friendly way of mapping tags to override layers.]`
- `FVector TraversalLedgeLocation []`
- `FQuat TraversalLedgeRotation []`
- `FTransform TraversalLedgeTransform []`
- `bool bHasOverrideLayer [Whether or not we have an override layer applied]`
- `bool bIsThirdPersonABP [Whether or not this AnimInstance is applied to a 3P or a 1P mesh setup - this is NOT whether we are currently in first person.]`
- `bool bWantsBlendOutOfSequencer [Set to true when we need to blend out of sequencer.]`


**方法**:

- `bool ApplyOverrideLayer(FGameplayTag LayerTag, float32 BlendInTime)`  
  Apply an override layer to this anim instance with the given blend time
- `BlendOutOfSequencer()`
- `BPStopAllMontages(float32 BlendOutTime)`  
  Stop all montages
- `UNarrativeAnimSet GetAnimSet(FGameplayTag AnimSetTag, bool& bOutFoundAnimSet)`  
  Search for an animset on the anim instance via its tag. Return AnimSet and boolean saying whether animset was found
- `USkeletalMeshComponent GetCharacterMesh() const`  
  Return the main character mesh. This works even if the AnimInstance is applied to a character visual instead of a character.
- `ANarrativeCharacter GetCharacterRef() const`  
  Return the owning character
- `ANarrativeCharacterVisual GetCharacterVisualRef() const`  
  Return the owning character
- `UNarrativeAnimInstance GetMainABPRef() const`  
  Return the owning characters main ABP - the one on character mesh
- `UNarrativeAnimInstance GetOverrideLayerAnimInstance() const`  
  Return the override layers anim instance
- `FGameplayTag GetOverrideLayerTag() const`  
  Return the override layers tag
- `bool HasOverrideLayer() const`  
  Return if we're overriding with a layer at present
- `RemoveOverrideLayer(float32 BlendOutTime)`  
  Remove the given override layer over a set amount of time, blending back into our normal ABP logic.

---

