### UQuest


**属性**:

- `UQuestState CurrentState [The current state the player is at in this quest]`
- `TArray<UQuestState> InheritableStates [Child quests don't inherit quest graph nodes, however sometimes you'd like children to inherit some states,
       for example your parent quest could have a state in here called "RanOutOfTime", and that way any child quests
       could inherit the "RanOutOfTime" state instead of having to manually have one added to every quest.]`
- `FOnQuestPostLoad OnQuestPostLoad [Called when the quest has been loaded back in.]`
- `UTalesComponent OwningComp []`
- `APlayerController OwningController []`
- `APawn OwningPawn []`
- `FOnQuestBranchCompleted QuestBranchCompleted [Called when a quest objective has been completed.]`
- `FText QuestDescription`
- `TSubclassOf<UDialogue> QuestDialogue [A dialogue asset holding all dialogue from the quest.]`
- `FDialoguePlayParams QuestDialoguePlayParams [A dialogue asset holding all dialogue from the quest.]`
- `FOnQuestFailed QuestFailed [Called when a quest is failed.]`
- `FOnQuestForgotten QuestForgotten [Called when a quest is forgotten.]`
- `FText QuestName`
- `FOnQuestNewState QuestNewState [Called when a quest objective is updated and we've received a new objective]`
- `FOnQuestRestarted QuestRestarted [Called when a quest is restarted.]`
- `UQuestState QuestStartState [The beginning state of this quest]`
- `FOnQuestStarted QuestStarted [Called when a quest is started.]`
- `FOnQuestSucceeded QuestSucceeded [Called when a quest is completed.]`
- `FOnQuestTaskCompleted QuestTaskCompleted [Called when a quest task on a branch is completed ie 10 out of 10 coins found]`
- `FOnQuestTaskProgressChanged QuestTaskProgressChanged [Called when a quest task in a branch has made progress. ie 6 out of 10 coins found]`
- `TArray<UQuestState> ReachedStates [All the states we've reached so far. Useful for a quest journal, where we need to show the player what they have done so far]`
- `bool bResumeDialogueAfterLoad [if true, the quest dialogue will resume when you load back into the game]`
- `bool bTracked [Whether or not the quest is marked as tracked. If tracked the navigation markers will be added, otherwise these will be hidden.]`


**方法**:

- `AddQuestRequirement(UQuestRequirement Requirement)`  
  Add a requirement to the quest.
- `BPOnQuestBranchCompleted(const UQuest Quest, const UQuestBranch Branch)`
- `BPOnQuestFailed(const UQuest Quest, FText QuestFailedMessage)`
- `BPOnQuestNewState(UQuest Quest, const UQuestState NewState)`
- `BPOnQuestStarted(const UQuest Quest)`
- `BPOnQuestSucceeded(const UQuest Quest, FText QuestSucceededMessage)`
- `BPOnQuestTaskCompleted(const UQuest Quest, const UNarrativeTask Task, const UQuestBranch Step)`
- `BPOnQuestTaskProgressChanged(const UQuest Quest, const UNarrativeTask Task, const UQuestBranch Step, int CurrentProgress, int RequiredProgress)`
- `BPPreQuestStarted(const UQuest Quest)`  
  Called before tasks are ready - a good place to set up data tasks depend on
- `BPQuestPostLoad()`  
  Called when the quest is loaded back in from disk
- `EnterState(UQuestState NewState)`  
  Explicitly tell the quest to go to the given state
- `FailQuest(FText QuestFailedMessage)`
- `UQuestBranch GetBranch(FName ID) const`
- `TArray<UQuestBranch> GetBranches() const`
- `TArray<APlayerController> GetGroupMembers() const`  
  Return all players doing this quest if shared, or the owningcontroller if solo quest
- `TArray<UQuestNode> GetNodes() const`
- `UTalesComponent GetOwningComp() const`
- `APlayerController GetOwningController() const`
- `APawn GetOwningPawn() const`
- `EQuestCompletion GetQuestCompletion() const`  
  Grab the completion of the quest
- `FText GetQuestDescription() const`
- `FText GetQuestName() const`
- `UQuestState GetQuestStartState() const`
- `UQuestState GetState(FName ID) const`
- `TArray<UQuestState> GetStates() const`
- `bool IsTracked() const`
- `RemoveQuestRequirement(UQuestRequirement Requirement)`  
  Remove a requirement from the quest.
- `SetQuestDescription(FText NewDescription)`
- `SetQuestName(FText NewName)`
- `SetTracked(bool bNewTracked)`  
  Tell the quest that it is tracked - by default this will enable the quests navigation markers.
- `bool SpawnQuestActor(TSubclassOf<AActor> ActorClass, FTransform ActorTransform, FStableActor& SpawnedActor)`  
  * Spawn a quest actor! This will ensure the actors lifetime is managed automatically by the quest for you - when the quest ends,
* all of the spawned quest actors will be cleaned up from the level. It also handles re-spawning the actor if we load back in and quest is still active.
*
* Make sure to use the SpawnedActor ref variable to store your actor, and mark the var as SaveGame. This will let you safely access the spawned actor even if the player
* has closed and re-opened the game later.
*
* NOTE THIS FUNCTION DOESNT DO ANYTHING IF CALLED WHILST THE QUEST IS LOADING IN!
*
* This is because any quest actor requiring respawning should be respawned via the Narrative Save Subsystem instead. If you need
* to reference a spawned actor during a quest, store it using the SpawnedActor var and mark it as savegame - this way the reference will
* safely persist accross multiple play sessions.
*
* @param ActorClass this is the actor to spawn in.
* @param ActorTransform This is where we want to spawn the actor
* @param SpawnedActor the spawned actor will be stored in this variable. Make sure to mark the variable as savegame so it persists across sessions.
- `SucceedQuest(FText QuestSucceededMessage)`  
  Manually set the quest as succeeded. You'll need to provide some text for the UI as theres no node  the quest, you're manually succeeding it.

---

