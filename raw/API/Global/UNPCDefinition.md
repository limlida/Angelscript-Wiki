### UNPCDefinition


Data asset with information about an NPC, as well as its class. We don't store NPC information in the NPC actor itself, this is so we can access
NPC information like name, icon, etc without having to load the entire NPC class into memory.

**属性**:

- `TSoftObjectPtr<UNPCActivityConfiguration> ActivityConfiguration [The NPCs activity config.]`
- `TArray<TSoftObjectPtr<UNPCActivitySchedule>> ActivitySchedules [The NPCs Activity schedule.]`
- `float32 BuyItemPercentage [The percentage of the items value we'll buy items for if we're a vendor.]`
- `TSoftClassPtr<UDialogue> Dialogue [The dialogue that should play when we interact with this NPC - can be left empty.]`
- `int MaxLevel [The NPCs level will not be higher than this value]`
- `int MinLevel [The NPCs level will not be lower than this value]`
- `TSoftClassPtr<ANarrativeNPCCharacter> NPCClassPath [Class path]`
- `FName NPCID [FName ID for this NPC - DialogueSpeakerIDs need this, and also sequencer needs this for linking NPCs into sequence via tag.]`
- `FText NPCName [The name of this NPC. Will be used for the interaction and navigation markers.]`
- `float32 SellItemPercentage [The percentage of the items value we'll sell items for]`
- `FText ShopFriendlyName [The name of the vendors shop, if this NPC is a vendor.]`
- `TSoftObjectPtr<UTaggedDialogueSet> TaggedDialogueSet [The NPCs tagged dialogues - usually free movement dialopgues that can be kicked off via a tag "TaggedDialogue.Taunt, TaggedDialogue.Greet, etc.]`
- `int TradingCurrency [Default currency this character should have in their inventory]`
- `TArray<FLootTableRoll> TradingItemLoadout [The items we should grant the character by default.]`
- `FGuid UniqueNPCGUID [If this NPC is unique, we'll use this as the NPCs save system GUID. Since there is only one unique GUID
      defined here, this will nicely guarantee unique NPCs only ever have 1 save record created per NPC.]`
- `bool bAllowMultipleInstances [Is this NPC unique, or can we spawn multiple of them? Main characters for example generally only
      want a max of one spawned in a time, whilst a generic bandit might have as many instances as we want.]`
- `bool bIsVendor [Whether this NPCs inventory should be a vendor inventory - that is to say they are a shop vendor]`

---

