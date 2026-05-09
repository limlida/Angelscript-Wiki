### UInputMappingContext


UInputMappingContext : A collection of key to action mappings for a specific input context
Could be used to:
     Store predefined controller mappings (allow switching between controller config variants). TODO: Build a system allowing redirects of UInputMappingContexts to handle this.
     Define per-vehicle control mappings
     Define context specific mappings (e.g. I switch from a gun (shoot action) to a grappling hook (reel in, reel out, disconnect actions).
     Define overlay mappings to be applied on top of existing control mappings (e.g. Hero specific action mappings in a MOBA)

**属性**:

- `FText ContextDescription [Localized context descriptor]`
- `FInputMappingContextMappingData DefaultKeyMappings [List of Input Actions to which FKeys they are mapped to.]`
- `EMappingContextInputModeFilterOptions InputModeFilterOptions [Defines how this input mapping context should be filtered based on the current input mode.

Default is Use Project Default Query.

@Note: bEnableInputModeFiltering must be enabled in the UEnhancedInputDeveloperSettings for this to be considered.]`
- `FGameplayTagQuery InputModeQueryOverride [Tag Query which will be matched against the current Enhanced Input Subsystem's input mode if InputModeFilterOptions is set to UseCustomQuery.

If this tag query does not match with the current input mode tag container, then the mappings
will not be processed.

@Note: bEnableInputModeFiltering must be enabled in the UEnhancedInputDeveloperSettings for this to be considered.]`
- `TMap<FString,FInputMappingContextMappingData> MappingProfileOverrides [Key mappings that should be used INSTEAD of the default "Mappings" array above then the
provided Remappable Key Profile of the given name is currently active.

If there are no override mappings specified for a set for a specific mapping profile, then the default mappings will be used.]`
- `EMappingContextRegistrationTrackingMode RegistrationTrackingMode [Select the behaviour when multiple AddMappingContext() calls are made for this Input Mapping Context]`


**方法**:

- `FEnhancedActionKeyMapping& MapKey(const UInputAction Action, FKey ToKey)`  
  Map a key to an action within the mapping context.
- `UnmapAll()`  
  Unmap everything within the mapping context.
- `UnmapAllKeysFromAction(const UInputAction Action)`  
  Unmap all key maps to an action within the mapping context.
- `UnmapKey(const UInputAction Action, FKey Key)`  
  Unmap a key from an action within the mapping context.

---

