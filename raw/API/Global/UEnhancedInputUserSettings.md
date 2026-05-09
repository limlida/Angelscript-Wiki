### UEnhancedInputUserSettings


The Enhanced Input User Settings class is a place where you can put all of your Input Related settings
that you want your user to be able to change. Things like their key mappings, aim sensitivity, accessibility
settings, etc. This also provides a Registration point for Input Mappings Contexts (IMC) from possibly unloaded
plugins (i.e. Game Feature Plugins). You can register your IMC from a Game Feature Action plugin here, and then
have access to all the key mappings available. This is very useful for building settings screens because you can
now access all the mappings in your game, even if the entire plugin isn't loaded yet.

The user settings are stored on each UEnhancedPlayerInput object, so each instance of the settings can represent
a single User or Local Player.

To customize this for your game, you can create a subclass of it and change the "UserSettingsClass" in the
Enhanced Input Project Settings.

**属性**:

- `FMappableKeyProfileChanged__EnhancedInputUserSettings OnKeyProfileChanged`
- `FEnhancedInputUserSettingsApplied__EnhancedInputUserSettings OnSettingsApplied`
- `FEnhancedInputUserSettingsChanged__EnhancedInputUserSettings OnSettingsChanged`


**方法**:

- `ApplySettings()`  
  Apply any custom input settings to your user. By default, this will just broadcast the OnSettingsApplied delegate
which is a useful hook to maybe rebuild some UI or do other user facing updates.
- `AsyncSaveSettings()`  
  Asynchronously save the settings to a hardcoded save game slot. This will work for simple games,
but if you need to integrate it into an advanced save system you should Serialize this object out with the rest of your save data.

OnAsyncSaveComplete will be called upon save completion.
- `UEnhancedPlayerMappableKeyProfile CreateNewKeyProfile(FPlayerMappableKeyProfileCreationArgs InArgs)`  
  Creates a new profile with this name and type.
- `TSet<FPlayerKeyMapping> FindMappingsInRow(FName MappingName) const`  
  Returns a set of all player key mappings for the given mapping name.
- `UEnhancedPlayerMappableKeyProfile GetActiveKeyProfile() const`  
  Get the currently active key profile that the user has set
- `FString GetActiveKeyProfileId() const`  
  Gets the currently selected key profile
- `UEnhancedPlayerMappableKeyProfile GetKeyProfileWithId(FString ProfileId) const`
- `bool IsMappingContextRegistered(const UInputMappingContext IMC) const`  
  Returns true if this mapping context is currently registered with the settings
- `MapPlayerKey(FMapPlayerKeyArgs InArgs, FGameplayTagContainer& FailureReason)`  
  Sets the player mapped key on the current key profile.
- `bool RegisterInputMappingContext(const UInputMappingContext IMC)`  
  Registers this mapping context with the user settings. This will iterate all the key mappings
in the context and create an initial Player Mappable Key for every mapping that is marked as mappable.
- `bool RegisterInputMappingContexts(TSet<UInputMappingContext> MappingContexts)`  
  Registers multiple mapping contexts with the settings
- `ResetAllPlayerKeysInRow(FMapPlayerKeyArgs InArgs, FGameplayTagContainer& FailureReason)`  
  Resets each player mapped key to it's default value from the Input Mapping Context that it was registered from.
If a key did not come from an IMC (i.e. it was added additionally by the player) then it will be reset to EKeys::Invalid.

@param InArgs                         Arguments that contain the mapping name and profile ID to find the mapping to reset.
@param FailureReason          Populated with failure reasons if the operation fails.
- `ResetKeyProfileIdToDefault(FString ProfileId, FGameplayTagContainer& FailureReason)`  
  Resets the given key profile to default key mappings

@param ProfileId             The ID of the key profile to reset
@param FailureReason Populated with failure reasons if the operation fails.
- `ResetKeyProfileToDefault(FGameplayTag ProfileId, FGameplayTagContainer& FailureReason)`
- `SaveSettings()`  
  Synchronously save the settings to a hardcoded save game slot. This will work for simple games,
but if you need to integrate it into an advanced save system you should Serialize this object out with the rest of your save data.
- `bool SetActiveKeyProfile(FString InProfileId)`  
  Changes the currently active key profile to the one with the given name. Returns true if the operation was successful.
- `UnMapPlayerKey(FMapPlayerKeyArgs InArgs, FGameplayTagContainer& FailureReason)`  
  Unmaps a single player mapping that matches the given Mapping name, slot, and hardware device.
- `bool UnregisterInputMappingContext(const UInputMappingContext IMC)`  
  Removes this mapping context from the registered mapping contexts
- `bool UnregisterInputMappingContexts(TSet<UInputMappingContext> MappingContexts)`  
  Removes multiple mapping contexts from the registered mapping contexts

---

