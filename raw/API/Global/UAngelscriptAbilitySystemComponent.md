### UAngelscriptAbilitySystemComponent


**属性**:

- `FAbilityGivenDelegate OnAbilityGiven`
- `FAbilityRemovedDelegate OnAbilityRemoved`
- `FAttributeChangedDelegate OnAttributeChanged`
- `FInitAbilityActorInfoDelegate OnInitAbilityActorInfo [Called for all changes occurring on self]`
- `FOwnedTagUpdatedDelegate OnOwnedTagUpdated`


**方法**:

- `bool ActivateAbilitiesUsingTags(FGameplayTagContainer GameplayTagContainer, bool bAllowRemoteActivation = true)`
- `BindInput(UInputComponent InputComponent, FAngelscriptInputBindData BindData)`
- `FGameplayAbilitySpecHandle GiveAbility(TSubclassOf<UGameplayAbility> InAbilityClass, int Level = 1, int OptionalInputID = - 1, UObject OptionalSourceObject = nullptr)`  
  Ability functions
- `FGameplayAbilitySpecHandle GiveAbilityAndActivateOnce(TSubclassOf<UGameplayAbility> InAbilityClass, int Level = 1, int OptionalInputID = - 1, UObject OptionalSourceObject = nullptr)`
- `InitAbilityActorInfo(AActor InOwnerActor, AActor InAvatarActor)`
- `SetRemoveAbilityOnEnd(FGameplayAbilitySpecHandle AbilitySpecHandle)`
- `bool CanActivateAbilityByClass(TSubclassOf<UGameplayAbility> InAbilityToActivate) const`  
  Check if ability of class can be activated
- `bool CanActivateAbilitySpec(FGameplayAbilitySpecHandle AbilitySpecHandle) const`  
  Check if ability can be activated
- `CancelAbilitiesByTags(FGameplayTagContainer WithTags, FGameplayTagContainer WithoutTags, UGameplayAbility Ignore = nullptr)`
- `CancelAbility(TSubclassOf<UGameplayAbility> InAbilityClass)`
- `CancelAbilityByHandle(FGameplayAbilitySpecHandle AbilityHandle)`
- `FGameplayAbilityActorInfo& GetAbilityActorInfo() const`
- `UObject GetAbilitySpecSourceObject(FGameplayAbilitySpecHandle AbilitySpecHandle)`
- `GetActiveAbilitiesWithTags(FGameplayTagContainer GameplayTagContainer, TArray<UGameplayAbility>& ActiveAbilities) const`
- `GetAndRegisterAttributeChangedCallback(TSubclassOf<UAngelscriptAttributeSet> AttributeSetClass, FName AttributeName, UObject CallbackObject, FName CallbackFunctionName_FAngelscriptAttributeChangedData, float32& OutCurrentValue)`
- `GetAndRegisterCallbackForAttribute(TSubclassOf<UAngelscriptAttributeSet> AttributeSetClass, FName AttributeName, float32& OutCurrentValue)`
- `float32 GetAttributeBaseValue(TSubclassOf<UAngelscriptAttributeSet> AttributeSetClass, FName AttributeName, float32 DefaultValue = 0.000000) const`  
  If attribute doesn't exist will return DefaultValue(which is by default 0.f)
- `float32 GetAttributeBaseValueChecked(TSubclassOf<UAngelscriptAttributeSet> AttributeSetClass, FName AttributeName) const`
- `float32 GetAttributeCurrentValue(TSubclassOf<UAngelscriptAttributeSet> AttributeSetClass, FName AttributeName, float32 DefaultValue = 0.000000) const`  
  If attribute doesn't exist will return DefaultValue(which is by default 0.f)
- `float32 GetAttributeCurrentValueChecked(TSubclassOf<UAngelscriptAttributeSet> AttributeSetClass, FName AttributeName) const`
- `AActor GetAvatar() const`
- `float32 GetCooldownTimeRemaining(TSubclassOf<UGameplayAbility> InAbilityClass) const`
- `APlayerController GetPlayerController() const`
- `bool HasAbility(TSubclassOf<UGameplayAbility> InAbilityClass) const`
- `bool HasAllGameplayTags(FGameplayTagContainer TagContainer) const`  
  HasAllMatchingGameplayTags, but cannot have the same name so adding "Owned"
- `bool HasAnyGameplayTags(FGameplayTagContainer TagContainer) const`  
  HasAnyMatchingGameplayTags, but cannot have the same name so adding "Owned"
- `bool HasGameplayTag(FGameplayTag TagToCheck) const`  
  Tag functions
- `bool IsAbilityActive(TSubclassOf<UGameplayAbility> InAbilityClass) const`
- `ModAttributeUnsafe(FGameplayAttribute GameplayAttribute, EGameplayModOp ModifierOp, float32 ModifierMagnitude)`  
  This function will apply an attribute change without invoking all the callbacks! Do not use unless you have to and know what you are doing! It can be useful for clamping attribute values to max values for example. For all other scenarios, use the SetAttribute set of functions!
- `OnAttributeSetRegistered(UObject InObject, FName InFunctionName)`  
  This could be called multiple times if we register attribute sets late. This needs to be a function so we can handle late adds.
- `RegisterAttributeChangedCallback(TSubclassOf<UAngelscriptAttributeSet> AttributeSetClass, FName AttributeName, UObject CallbackObject, FName CallbackFunctionName_FAngelscriptAttributeChangedData)`  
  Use these to register callbacks to individual attributes. As the CallbackFunctionName_FAngelscriptAttributeChangedData parameter name suggests, the callback function should take a single FAngelscriptAttributeChangedData as its parameter to bind correctly.
- `UAngelscriptAttributeSet RegisterAttributeSet(TSubclassOf<UAngelscriptAttributeSet> AttributeSetClass)`  
  Adds the attribute set type to the actor that owns this component. Ensures that attribute sets are never added twice.
- `RegisterCallbackForAttribute(TSubclassOf<UAngelscriptAttributeSet> AttributeSetClass, FName AttributeName)`
- `SetAbilitySpecSourceObject(FGameplayAbilitySpecHandle AbilitySpecHandle, UObject NewSourceObject)`
- `SetAttributeBaseValue(TSubclassOf<UAngelscriptAttributeSet> AttributeSetClass, FName AttributeName, float32 NewBaseValue)`  
  Requires the attribute to actually exist
- `bool TryActivateAbilitySpec(FGameplayAbilitySpecHandle Handle, bool bAllowRemoteActivation = true)`
- `bool TryGetAttributeBaseValue(TSubclassOf<UAngelscriptAttributeSet> AttributeSetClass, FName AttributeName, float32& OutBaseValue) const`
- `bool TryGetAttributeCurrentValue(TSubclassOf<UAngelscriptAttributeSet> AttributeSetClass, FName AttributeName, float32& OutCurrentValue) const`
- `bool TrySetAttributeBaseValue(TSubclassOf<UAngelscriptAttributeSet> AttributeSetClass, FName AttributeName, float32 NewBaseValue)`  
  Use these functions when you are not sure if the attribute exists

---

