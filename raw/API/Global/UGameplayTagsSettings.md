### UGameplayTagsSettings


Class for importing GameplayTags directly from a config file.
FGameplayTagsEditorModule::StartupModule adds this class to the Project Settings menu to be edited.
Editing this in Project Settings will output changes to Config/DefaultGameplayTags.ini.

Primary advantages of this approach are:
-Adding new tags doesn't require checking out external and editing file (CSV or xls) then reimporting.
-New tags are mergeable since .ini are text and non exclusive checkout.

To do:
-Better support could be added for adding new tags. We could match existing tags and autocomplete subtags as
the user types (e.g, autocomplete 'Damage.Physical' as the user is adding a 'Damage.Physical.Slash' tag).

**属性**:

- `bool AllowEditorTagUnloading [If true, will allow unloading of tags in the editor when plugins are removed]`
- `bool AllowGameTagUnloading [If true, will allow unloading of tags in a non-editor gebuild when plugins are removed, this is potentially unsafe and affects requests to unload during play in editor]`
- `TArray<FGameplayTagCategoryRemap> CategoryRemapping [Category remapping. This allows base engine tag category meta data to remap to multiple project-specific categories.]`
- `FString CleanupUnusedTags [Find and remove unused tags]`
- `TArray<FName> CommonlyReplicatedTags [List of most frequently replicated tags]`
- `bool FastReplication [If true, will replicate gameplay tags by index instead of name. For this to work, tags must be identical on client and server]`
- `TArray<FSoftObjectPath> GameplayTagTableList [List of data tables to load tags from]`
- `bool ImportTagsFromConfig [If true, will import tags from ini files in the config/tags folder]`
- `FString InvalidTagCharacters [These characters cannot be used in gameplay tags, in addition to special ones like newline]`
- `int NetIndexFirstBitSegment [The length in bits of the first segment when net serializing tags. We will serialize NetIndexFirstBitSegment + 1 bit to indicate "more", which is slower to replicate]`
- `FString NewTagSource [Add a new gameplay tag config file for saving plugin or game-specific tags.]`
- `int NumBitsForContainerSize [Numbers of bits to use for replicating container size, set this based on how large your containers tend to be]`
- `TArray<FRestrictedConfigInfo> RestrictedConfigFiles [A list of .ini files used to store restricted gameplay tags.]`
- `FString RestrictedTagList [Restricted Gameplay Tags.

Restricted tags are intended to be top level tags that are important for your data hierarchy and modified by very few people.]`
- `bool WarnOnInvalidTags [If true, will give load warnings when reading in saved tag references that are not in the dictionary]`
- `bool bDynamicReplication [If true, will replicate gameplay tags dynamically by index per connection. Slightly higher cost than FastReplication, but tags can differ between client and server]`

---

