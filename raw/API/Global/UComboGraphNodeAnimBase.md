### UComboGraphNodeAnimBase


Base Class for all Anim related Combo Graph nodes (montage or sequence)

Holds runtime properties for animation and effects / cues containers.

**属性**:

- `float32 AnimPlaySpeed_InStun [持续时间]`
- `float32 AttackCoefficient [攻击力系数]`
- `float32 AttackPowerCoefficient [攻击力系数]`
- `FGameplayTagContainer CancelMontageTags`
- `TSubclassOf<UGameplayEffect> CostGameplayEffect [This GameplayEffect represents the cost (mana, stamina, etc) of the combo node. It will be applied when the node is committed.]`
- `TMap<FGameplayTag,FComboGraphCueContainer> CuesContainerMap [Map of gameplay tags we're listening to to gameplay cues containers]`
- `EComboGraphDamageHandlingMethod DamageHandlingMethod [Specify which method to use to handle Effects Containers

When using Gameplay Abilities, you should use `AbilitySystem` method and go through Gameplay Effects to modify your Attributes.

Non Gameplay Abilities user can fallback to Unreal's Damage System.]`
- `TMap<FGameplayTag,FComboGraphDamageSystemContainer> DamagesContainerMap [Map of gameplay tags we're listening to damage containers]`
- `float32 DelayToCloseComboWindow [Delay to close combo window]`
- `TMap<FGameplayTag,FComboGraphGameplayEffectContainer> EffectsContainerMap [Map of gameplay tags we're listening to gameplay effect containers]`
- `FGameplayTagContainer EventTags [This tag container can be used to define Gameplay Tags to listen to with the underlying "Play Montage and Wait For Event" task.

While the animation is playing, if a gameplay event with one of those tags is sent to the owning actor, the "EventReceived" delegate
for the "StartComboGraph" task will be called with the Gameplay Tag for the event and Gameplay Event Data structure.]`
- `FGameplayTagContainer GrantTagsWhenTaskActivated`
- `float32 MontagePlayRate [Anim montage play rate]`
- `TMap<TSoftClassPtr<UAnimNotifyState>,FComboGraphNotifyStateAutoSetup> NotifyStatesOverrides [Notify states overrides for Auto Setup.

Before going through play montage task, adds all items from this map to plugin settings map (if any keys are in both, the value from the node map wins).

If animation asset (montage or sequence) being played is using one of the AnimNotifyState, the auto setup for this notify is ignored (notifies in anim assets win).]`
- `FInheritedTagContainer OverrideCostEffectGameplayTags`
- `float32 RootMotionScale [Sets scale to apply to root motion translation on the animating character]`
- `bool bStopAnimationWhenAbilityEnds [If true, this montage will be aborted if the ability ends normally. It is always stopped when the ability is explicitly cancelled.

This value is passed down to the ability task playing the montage, and corresponds to bStopWhenAbilityEnds parameter value of the PlayMontageAndWait ability task.]`


**方法**:

- `AActor GetAvatarActor() const`  
  Returns the direct parent node that this node was transitioned from.
- `ACharacter GetAvatarAsCharacter() const`  
  Returns the direct parent node that this node was transitioned from.
- `APawn GetAvatarAsPawn() const`  
  Returns the direct parent node that this node was transitioned from.
- `float32 GetMagnitudeForContainer(float OriginalMagnitude, float ElapsedSeconds, float TriggeredSeconds, float AnimationLength, float MontagePlayTime, float InputMagnitude, FGameplayTag ContainerTag) const`  
  Used by Combo Graph Task to calculate Damage Container damage to apply or Effect Container set by caller magnitudes before being applied via Effects.

Can be overridden in Blueprint, and should return the new computed magnitude value (default native implementation simply return the Container Magnitude value)

@param OriginalMagnitude Original magnitude or base damage value defined in Combo Node for the Effect or Damage Container (depends on DamageHandlingMethod)
@param ElapsedSeconds Time in seconds returned by the Enhanced Input system. Total time the action has been evaluating triggering (Ongoing & Triggered)
@param TriggeredSeconds Time in seconds returned by the Enhanced Input system. Time the action has been actively triggered (Triggered only)
@param AnimationLength Total animation play time with section time defined by StartSection on montage node subtracted from the result. If no StartSection is defined (None), total animation play time is used
@param MontagePlayTime Actual Play time in seconds for the montage at the time the container is applied
@param InputMagnitude Normalized magnitude value ranging from 0 to 1 based on Enhanced Input Elapsed Time and Animation Length (1 means Elapsed Time is at or above the total animation length)
@param ContainerTag Gameplay Tag key for the Effect or Damage container (depends on DamageHandlingMethod). Can be used to get back original container from DamagesContainerMap or EffectsContainerMap
@return New adjusted magnitude value
- `AActor GetOwnerActor() const`  
  Returns the direct parent node that this node was transitioned from.
- `bool CanActivateNode() const`  
  Returns true if this node can be activated right now. Has no side effects.
- `UAnimSequenceBase GetAnimationAsset() const`  
  Returns the animation asset defined in editor for the node. Can be either a sequence or montage.
- `UClass GetAnimationClass() const`  
  Returns the type as text of underlying animation asset for the node. Can be either a sequence or montage.

Effectively just calling AnimationAsset->GetClass();
- `TArray<UComboGraphNodeAnimBase> GetChildren() const`  
  Returns the list of children nodes for this node, that is direct descendant in the graph hierarchy.
- `FText GetNodeTitle() const`  
  Returns title for the node as displayed in the editor (either name of the animation asset or if defined the NodeTitle property)
- `UGameplayAbility GetOwningAbility() const`  
  Returns the owning gameplay ability this node currently being played in. Should only return valid instance if the ability is currently active / running.
- `UComboGraph GetOwningGraph() const`  
  Returns the ComboGraph UObject this node is part of.
- `UComboGraphAbilityTask_StartGraph GetOwningTask() const`  
  Returns the owning ability task this node currently being played in. Should only return valid instance if the task is currently active / running.
- `UComboGraphNodeAnimBase GetPreviousNode() const`  
  Returns the direct parent node that this node was transitioned from.
- `OnActivated(UGameplayTask Task)`  
  Event triggered when the node is activated and transitioned to in the owning graph.

This only triggers if checks (CanActivateNode / Cost commit) have been successful and not preventing execution.
- `OnDeactivated(UGameplayTask Task)`  
  Event triggered when the node is ending and owning graph is transitioning to the next node (or ending the graph).
- `OnEventReceived(FGameplayTag EventTag, FGameplayEventData EventData)`  
  Event triggered when the actor owning the combo graph this node is part of is receiving a gameplay event this node listens to
(either with the EventTags property or if it is defining Gameplay Effects or Cues Containers).
- `OnInitialized()`  
  Event triggered when the node is activated and transitioned to in the owning graph, before CanActivateNode checks / cost commit and activation.
- `OnMontagePlay(UAnimMontage Montage)`  
  Event triggered when the animation asset for this node is played as an anim montage in the owning ability task and gameplay ability.

---

