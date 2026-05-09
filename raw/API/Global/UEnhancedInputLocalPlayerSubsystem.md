### UEnhancedInputLocalPlayerSubsystem


Per local player input subsystem

**属性**:

- `FOnControlMappingsRebuilt__EnhancedInputLocalPlayerSubsystem ControlMappingsRebuiltDelegate [Blueprint Event that is called at the end of any frame that Control Mappings have been rebuilt.]`
- `FOnMappingContextAdded__EnhancedInputLocalPlayerSubsystem OnMappingContextAdded [* A callback fired when a mapping context is added (AddMappingContext is called on this subsystem)
*
* Note:  This does not make any guarantee that the control mappings will have been rebuilt.
* If you need that, then listen to the ControlMappingsRebuiltDelegate instead.]`
- `FOnMappingContextRemoved__EnhancedInputLocalPlayerSubsystem OnMappingContextRemoved [* A callback fired when a mapping context is removed (RemoveMappingContext is called on this subsystem)
*
* Note:  This does not make any guarantee that the control mappings will have been rebuilt.
* If you need that, then listen to the ControlMappingsRebuiltDelegate instead.]`
- `FOnUserSettingsPostInitialized__EnhancedInputLocalPlayerSubsystem OnPostUserSettingsInitialized [Delegate that is fired after this local player's User Settings object has been created and loaded for the first time.]`


**方法**:

- `AddMappingContext(const UInputMappingContext MappingContext, int Priority, FModifyContextOptions Options)`  
  Add a control mapping context.
@param MappingContext                A set of key to action mappings to apply to this player
@param Priority                              Higher priority mappings will be applied first and, if they consume input, will block lower priority mappings.
@param Options                               Options to consider when adding this mapping context.
- `ClearAllMappings()`  
  Remove all applied mapping contexts.
- `UEnhancedPlayerInput GetPlayerInput() const`
- `UEnhancedInputUserSettings GetUserSettings() const`
- `bool HasMappingContext(const UInputMappingContext MappingContext)`  
  Check if a mapping context is applied to this subsystem's owner.
        // TODO: BlueprintPure would be nicer. Move into library?
- `InjectInputForAction(const UInputAction Action, FInputActionValue RawValue, TArray<UInputModifier> Modifiers, TArray<UInputTrigger> Triggers)`  
  Input simulation via injection. Runs modifiers and triggers delegates as if the input had come through the underlying input system as FKeys.
Applies action modifiers and triggers on top.

@param Action                The Input Action to set inject input for
@param RawValue              The value to set the action to
@param Modifiers             The modifiers to apply to the injected input.
@param Triggers              The triggers to apply to the injected input.
- `InjectInputVectorForAction(const UInputAction Action, FVector Value, TArray<UInputModifier> Modifiers, TArray<UInputTrigger> Triggers)`  
  Input simulation via injection. Runs modifiers and triggers delegates as if the input had come through the underlying input system as FKeys.
Applies action modifiers and triggers on top.

@param Action                The Input Action to set inject input for
@param Value                 The value to set the action to (the type will be controlled by the Action)
@param Modifiers             The modifiers to apply to the injected input.
@param Triggers              The triggers to apply to the injected input.
- `TArray<FKey> QueryKeysMappedToAction(const UInputAction Action)`  
  Returns the keys mapped to the given action in the active input mapping contexts.
- `EMappingQueryResult QueryMapKeyInActiveContextSet(const UInputMappingContext InputContext, const UInputAction Action, FKey Key, TArray<FMappingQueryIssue>& OutIssues, EMappingQueryIssue BlockingIssues)`  
  = DefaultMappingIssues::StandardFatal
- `EMappingQueryResult QueryMapKeyInContextSet(TArray<UInputMappingContext> PrioritizedActiveContexts, const UInputMappingContext InputContext, const UInputAction Action, FKey Key, TArray<FMappingQueryIssue>& OutIssues, EMappingQueryIssue BlockingIssues)`  
  = DefaultMappingIssues::StandardFatal
- `RemoveMappingContext(const UInputMappingContext MappingContext, FModifyContextOptions Options)`  
  Remove a specific control context.
This is safe to call even if the context is not applied.
@param MappingContext         Context to remove from the player
@param Options                        Options to consider when removing this input mapping context
- `RequestRebuildControlMappings(FModifyContextOptions Options, EInputMappingRebuildType RebuildType = EInputMappingRebuildType :: Rebuild)`  
  Flag player for reapplication of all mapping contexts at the end of this frame.
This is called automatically when adding or removing mappings contexts.

@param Options                Options to consider when removing this input mapping context

---

