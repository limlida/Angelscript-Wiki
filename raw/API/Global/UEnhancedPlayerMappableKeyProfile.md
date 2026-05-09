### UEnhancedPlayerMappableKeyProfile


Represents one "Profile" that a user can have for their player mappable keys

**属性**:

- `FText DisplayName [The localized display name of this profile]`
- `FPlatformUserId OwningUserId [The platform user id of the owning Local Player of this profile.]`
- `TMap<FName,FKeyMappingRow> PlayerMappedKeys [A map of "Mapping Row Name" to all key mappings associated with it.
Note: Dirty mappings will be serialized from UEnhancedInputUserSettings::Serialize]`
- `FString ProfileIdentifierString [The ID of this profile. This can be used by each Key Mapping to filter down which profile is required for it be equipped.]`


**方法**:

- `bool DoesMappingPassQueryOptions(FPlayerKeyMapping PlayerMapping, FPlayerMappableKeyQueryOptions Options) const`  
  Returns true if the given player key mapping passes the query filter provided.
- `DumpProfileToLog() const`  
  A helper function to print out all the current profile settings to the log.
- `int GetMappedKeysInRow(FName MappingName, TArray<FKey>& OutKeys) const`  
  OUT
- `int GetMappingNamesForKey(FKey InKey, TArray<FName>& OutMappingNames) const`  
  OUT
- `TMap<FName,FKeyMappingRow> GetPlayerMappingRows() const`  
  Get all known key mappings for this profile.

This returns a map of "Mapping Name" -> Player Mappings to that name
- `FText GetProfileDisplayName() const`  
  Get the localized display name for this profile
- `FString GetProfileIdString() const`
- `FindKeyMapping(FPlayerKeyMapping& OutKeyMapping, FMapPlayerKeyArgs InArgs) const`
- `int QueryPlayerMappedKeys(FPlayerMappableKeyQueryOptions Options, TArray<FKey>& OutKeys) const`  
  OUT
- `ResetMappingToDefault(FName InMappingName)`  
  Resets every player key mapping to this mapping back to it's default value
- `ResetToDefault()`  
  Resets all the key mappings in this profile to their default value from their Input Mapping Context.
- `SetDisplayName(FText NewDisplayName)`
- `FString ToString() const`  
  Returns a string that can be used to debug the current key mappings.

---

