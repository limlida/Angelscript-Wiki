### UArsenalSettings


Configurable settings for Narrative Pro.

**属性**:

- `FName BBKey_AttackTarget [Attack target BB key name]`
- `FName BBKey_Delay [Delay BB key name]`
- `FName BBKey_FollowTarget [FollowTarget BB key name]`
- `FName BBKey_PlayerPawn [PlayerPawn BB key name]`
- `FName BBKey_TargetLocation [TargetLocation BB key name]`
- `FName BBKey_TargetRotation [TargetRotation BB key name]`
- `float32 ChainLinkAngleTolerance [TODO: describe this better /// defines the maximum angle difference (in degrees) between each link in a cover chain.
/// changing this value will cause cover to regenerate. for the current world]`
- `float32 ChainLinkCorrectionAngleTolerance [any difference between two links less than the angle set are merged into one chain link.]`
- `FSoftObjectPath CharacterCreatorMap [The map that we'll open when the player wants to open the character creator]`
- `uint8 CorrectionIterationCount [number of times to run correction.]`
- `FCoverTraceConfig CoverTraceConfig [the distance between points along a cover chain.]`
- `TSubclassOf<UGameplayEffect> DamageGameplayEffect_SetByCaller [Gameplay effect used to apply damage.  Uses SetByCaller for the damage magnitude.]`
- `TSubclassOf<AItemPickup> DefaultInteractablePickup`
- `TSoftObjectPtr<UTaggedMusicSet> DefaultMusicSet`
- `FString DefaultSaveName [This is the default save game name - it is recommended you don't change this unless you know what you are doing]`
- `FString DefaultUsername [/ If empty we'll keep Unreal assigned username, but if set to a valid string, game mode will override your player to use this.]`
- `FSoftObjectPath DialogueSoundClass [Dialogue sound class]`
- `TSubclassOf<UGameplayEffect> DynamicTagGameplayEffect [Gameplay effect used to add and remove dynamic tags.]`
- `FSoftObjectPath GameEntryMap [The map that the default main menu will load.]`
- `TSubclassOf<UGameplayEffect> HealGameplayEffect_SetByCaller [Gameplay effect used to apply damage.  Uses SetByCaller for the damage magnitude.]`
- `ECollisionChannel InteractionTraceChannel`
- `FName InteractionTraceProfile`
- `TSoftObjectPtr<USoundBase> MasterMetaSound`
- `FSoftObjectPath MasterSoundClass [Overall sound class]`
- `FString MetadataSaveFileName [The save file name we'll use to store metadata about our main saves.]`
- `FSoftObjectPath MusicSoundClass [Music sound class]`
- `int NumSaveSlots [How many save slots the default menu should support]`
- `FSoftObjectPath SFXSoundClass [SFX sound class]`
- `float32 SmallestChainLinkLength [prevents chain segments less than the set length.]`
- `TMap<FGameplayTag,FText> TagFriendlyDisplayNames [/ Define a nice display name for any gameplay tags that need it here.]`
- `FSoftObjectPath UISoundClass [UI sound class]`
- `ECollisionChannel WeaponTraceChannel`
- `bool bDisplayProjectSettingsNotification [editor only.
when true if project settings do not match some of the required Narrative Pro settings then a pop-up is displayed.]`
- `bool bLoadCharacterCreatorOnNewGame [If true, starting a new game will load the character creator, instead of loading the entry map. (The default character creator will then throw you into the entry map when you finish creation.)]`

---

