### UTkGameplayAbility


UTkGameplayAbility

    The base gameplay ability class used by this project.

**属性**:

- `ETkAbilityActivationGroup ActivationGroup`
- `ETkAbilityActivationPolicy ActivationPolicy [Defines how this ability is meant to activate.]`
- `FGameplayTagContainer InputTagContainer`
- `UTkAbilitySystemComponent OwnerASC []`
- `bool bLogCancelation [If true, extra information should be logged when this ability is canceled. This is temporary, used for tracking a bug.]`


**方法**:

- `bool CanChangeActivationGroup(ETkAbilityActivationGroup NewGroup) const`  
  Returns true if the requested activation group is a valid transition.
- `bool ChangeActivationGroup(ETkAbilityActivationGroup NewGroup)`  
  Tries to change the activation group.  Returns true if it successfully changed.
- `AController GetControllerFromActorInfo() const`
- `UTkAbilitySystemComponent GetTkAbilitySystemComponentFromActorInfo() const`
- `OnAbilityAdded()`  
  Called when this ability is granted to the ability system component.
- `OnAbilityRemoved()`  
  Called when this ability is removed from the ability system component.
- `OnPawnAvatarSet()`  
  Called when the ability system is initialized with a pawn avatar.

---

