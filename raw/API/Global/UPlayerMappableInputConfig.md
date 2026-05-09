### UPlayerMappableInputConfig


UPlayerMappableInputConfig

This represents one set of Player Mappable controller/keymappings. You can use this input config to create
the default mappings for your player to start with in your game. It provides an easy way to get only the player
mappable key actions, and it can be used to add multiple UInputMappingContext's at once to the player.

Populate this data asset with Input Mapping Contexts that have player mappable actions in them.

**属性**:

- `FText ConfigDisplayName [The display name that can be used]`
- `FName ConfigName [The unique name of this config that can be used when saving it]`
- `TMap<TObjectPtr<UInputMappingContext>,int> Contexts [Mapping contexts that make up this Input Config with their associated priority.]`
- `UObject Metadata [Metadata that can used to store any other related items to your key mapping such as icons, ability assets, etc.]`
- `bool bIsDeprecated [A flag that can be used to mark this Input Config as deprecated to your player/designers.]`


**方法**:

- `FName GetConfigName() const`
- `FText GetDisplayName() const`
- `TArray<FEnhancedActionKeyMapping> GetKeysBoundToAction(const UInputAction InAction) const`  
  Returns all the keys mapped to a specific Input Action in this mapping config.
- `FEnhancedActionKeyMapping GetMappingByName(FName MappingName) const`  
  Returns the action key mapping for the mapping that matches the given name
- `TMap<TObjectPtr<UInputMappingContext>,int> GetMappingContexts() const`  
  Return all the Input Mapping contexts that
- `UObject GetMetadata() const`  
  Get all the player mappable keys in this config.
- `TArray<FEnhancedActionKeyMapping> GetPlayerMappableKeys() const`  
  Get all the player mappable keys in this config.
- `bool IsDeprecated() const`
- `ResetToDefault()`  
  Resets this mappable config to use the keys

---

