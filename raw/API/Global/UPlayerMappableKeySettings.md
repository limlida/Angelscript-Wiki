### UPlayerMappableKeySettings


Hold setting information of an Action Input or a Action Key Mapping for setting screen and save purposes.

**属性**:

- `FText DisplayCategory [The category that this player mapping is in]`
- `FText DisplayName [The localized display name of this key mapping. Use this when displaying the mappings to a user.]`
- `UObject Metadata [Metadata that can used to store any other related items to this key mapping such as icons, ability assets, etc.]`
- `FName Name [A unique name for this player mapping to be saved with.]`
- `TArray<FString> SupportedKeyProfileIds [If this key mapping should only be added when a specific key profile is equipped, then set those here.

If this is empty, then the key mapping will not be filtered out based on the current profile.]`

---

