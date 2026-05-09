### ANarrativeNPCCharacter


Base class for a NarrativeCharacter that is AI Controlled.

**属性**:

- `ANarrativeNPCController CachedController [Required to grab the NPCController even if its not current possessing us, say because we're in a vehicle]`
- `TArray<TObjectPtr<AActor>> Hostiles [We consider anything in this list a "hostile override" - that is to say even if the actor is neutral or even friendly, we'll treat them as a hostile and attack.
      We need this because there are occasions where we want friendlies to attack each other, maybe during a quest. We also often want to attack neutrals that have attacked us,
      but by default their attitude will be neutral.]`
- `UNPCDefinition NPCDefinition [The NPCs data asset - this is set automatically by the NPC subsystem when it detects the NPC has spawned in]`
- `FGameplayTagContainer NPCFactions [This NPCs faction - can be changed at anytime and will be saved to disk]`
- `UNPCInteractable NPCInteractableComponent`
- `int NPCLevel [This NPCs level - NPCs levels are defined by their NPC asset]`
- `FNPCSpawnInfo SpawnInfo [Owning spawn info. It is marked as savegame, and you can modify it whenever you like for example for changing an NPCs spawn.]`
- `TArray<FTaggedDialogue> TaggedDialogues [If true, this NPC will start attacking anyone that causes damage to them, provided they aren't in the same faction.]`
- `UNarrativeInventoryComponent TradingInventoryComponent [NPCs have a seperate inventory for trading from.]`
- `bool bAggressiveOnTakeDamage [If true, this NPC will start attacking anyone that causes damage to them, provided they aren't in the same faction.]`


**方法**:

- `ApplyActivityConfig(UNPCActivityConfiguration NPCActivityConfig)`  
  Called when our activity config is ready
- `ApplyActivitySchedules(TArray<TSoftObjectPtr<UNPCActivitySchedule>> ActivitySchedules)`  
  App
- `ApplyDialogue(TSubclassOf<UDialogue> NPCDialogue)`  
  Called when our dialogue is set
- `ExecutePlayTaggedDialogue(FTaggedDialogue Dialogue, AActor DialogueInstigator)`  
  Notify the NPC a tagged dialogue should try play - this is blueprint implementable
- `UNPCActivityComponent GetActivityComponent() const`
- `ANarrativeNPCController GetNPCController() const`
- `UNPCDefinition GetNPCDefinition() const`  
  Get the npc definition from the character
- `FText GetNPCName() const`  
  Grab the NPCs name
- `FGuid GetStableActorGUID() const`
- `UNarrativeInventoryComponent GetTradingInventoryComponent() const`
- `NPCDataReady()`
- `PlayTaggedDialogue(FGameplayTag Tag, AActor DialogueInstigator)`  
  Notify the NPC a tagged dialogue should try play, like a greeting, farewell, taunt, etc.
- `bool ShouldBeAggressiveTowardsTarget(const AActor Target) const`  
  Allows a chance to let us be hostile towards any perceived target if you return true, even if they aren't in a hostile faction.
       This would let you do things like have friendly NPCs turn on the player if you've damaged them enough, etc.

---

