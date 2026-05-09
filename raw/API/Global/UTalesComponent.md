### UTalesComponent


Add this component to your Player Controller.
Narrative Component acts as the connection to the Narrative system and allows you to start quests, dialogues, complete Tasks, etc.

**属性**:

- `UDialogue CurrentDialogue [Current dialogue the player is in]`
- `float32 FallbackCooldown [Fallback cooldown if tagged cooldown entry isnt added in map]`
- `TMap<FString,int> MasterTaskList [A map of every narrative task the player has ever completed, where the key is the amount of times the action has been completed
       a TMap means we can very efficiently track large numbers of actions, such as shooting where the player may shoot a gun thousands of times]`
- `FOnDialogueBegan OnDialogueBegan [Called when a dialogue starts]`
- `FOnDialogueFinished OnDialogueFinished [Called when a dialogue has been finished for any reason]`
- `FDialogueOptionSelected OnDialogueOptionSelected [Called when a dialogue option is selected]`
- `FDialogueRepliesAvailable OnDialogueRepliesAvailable [Called when the NPC(s) have finished talking and the players replies are available]`
- `FOnJoinedParty OnJoinedParty [Called when we've joined a party]`
- `FOnLeaveParty OnLeaveParty [Called when we've left a party]`
- `FNPCDialogueLineFinished OnNPCDialogueLineFinished [Called when a dialogue line finishes]`
- `FNPCDialogueLineStarted OnNPCDialogueLineStarted [Called when a dialogue line starts]`
- `FOnNarrativeTaskCompleted OnNarrativeDataTaskCompleted [Called when a narrative data task is completed by the player]`
- `FPlayerDialogueLineFinished OnPlayerDialogueLineFinished [Called when a dialogue line finishes]`
- `FPlayerDialogueLineStarted OnPlayerDialogueLineStarted [Called when a dialogue line starts]`
- `FOnQuestBranchCompleted OnQuestBranchCompleted [Called when a quest objective has been completed.]`
- `FOnQuestFailed OnQuestFailed [Called when a quest is failed.]`
- `FOnQuestForgotten OnQuestForgotten [Called when a quest is forgotten.]`
- `FOnQuestNewState OnQuestNewState [Called when a quest objective is updated and we've received a new objective]`
- `FOnQuestRestarted OnQuestRestarted [Called when a quest is restarted.]`
- `FOnQuestStarted OnQuestStarted [Called when a quest is started.]`
- `FOnQuestSucceeded OnQuestSucceeded [Called when a quest is completed.]`
- `FOnQuestTaskCompleted OnQuestTaskCompleted [Called when a quest task in a step is completed]`
- `FOnQuestTaskProgressChanged OnQuestTaskProgressChanged [Called when a quest task in a quest step has made progress. ie 6 out of 10 wolves killed]`
- `UNarrativePartyComponent PartyComponent [The party we're in, if any.]`
- `TMap<FGameplayTag,float32> TaggedDialogueCooldowns [When a tagged dialogue goes to to play it queries this to see if the cooldown passes. This prevents various tagged
       dialogues like Greetings to be spammed by characters ingame.]`
- `TMap<FGameplayTag,float32> TaggedDialogueLastPlayTimes [Caches the last time a tagged dialogue played on this client so we can apply cooldowns.]`
- `bool bIsLoading [We set this flag to true during loading so we don't broadcast any quest update delegates as we load quests back in]`


**方法**:

- `bool BeginDialogue(TSubclassOf<UDialogue> Dialogue, FDialoguePlayParams PlayParams)`  
  Only callable on the server. Server grabs root dialogue node, validates its conditions, and sends it to the client via ClientRecieveDialogueOptions

       @param Dialogue The dialogue to begin
       @param DefaultNPCAvatar The NPC Avatar to use. For multi-NPC dialogues each speaker obviously needs their own avatar assigned - see the functions comment on how to do this.
       @param StartFromID The ID of the node you want to jump to. Can be left empty and the dialogue will begin from the root node.

       @return Whether the dialogue was successfully started
- `UQuest BeginQuest(TSubclassOf<UQuest> QuestClass, FName StartFromID = NAME_None)`  
  Begin a given quest. Return quest if success.

@param QuestAsset The quest to use
@param StartFromID If this is set to a valid ID in the quest, we'll skip to this quest state instead of playing the quest from the start

@return The created UQuest instance
- `ClientBeginDialogue(TSubclassOf<UDialogue> Dialogue, TArray<FName> NPCReplyChainIDs, TArray<FName> AvailableResponseIDs)`  
  Used by the server to tell client to start dialogue. Also sends the initial chunk
- `ClientBeginPartyDialogue(TSubclassOf<UDialogue> Dialogue, TArray<FName> NPCReplyChainIDs, TArray<FName> AvailableResponseIDs)`  
  Used by the server to inform client to start party dialogue. Also sends the initial chunk
- `ClientExitDialogue(EExitDialogueReason Reason)`  
  Used by the server to tell client to end dialogue
- `ClientExitPartyDialogue(EExitDialogueReason Reason)`  
  Used by the server to tell client to end dialogue
- `ClientRecieveDialogueChunk(TArray<FName> NPCReplyChainIDs, TArray<FName> AvailableResponseIDs)`  
  Used by the server to send valid dialogue chunks to the client
- `ClientSelectDialogueOption(FName OptionID, APlayerState Selector)`  
  Allows the server to inform a client to select a dialogue option. Used by party dialogues
- `bool ForgetQuest(TSubclassOf<UQuest> QuestClass)`  
  Forget a given quest. The quest will be removed from the players quest list,
and the quest can be started again later using BeginQuest() if desired.

@param QuestAsset The quest to use
@return Whether or not the quest was forgotten or not
- `TArray<UQuest> GetAllQuests() const`  
  Returns a list of all quests that are started, failed, or succeeded, in chronological order.
- `UDialogue GetCurrentDialogue() const`
- `TArray<UQuest> GetFailedQuests() const`  
  Returns a list of all failed quests, in chronological order.
- `TArray<UQuest> GetInProgressQuests() const`  
  Returns a list of all quests that are in progress, in chronological order.
- `int GetNumberOfTimesTaskWasCompleted(const UNarrativeDataTask Task, FString Name)`  
  IN MULTIPLAYER GAMES, THIS FUNCTION WILL ONLY WORK ON THE SERVER. Please see MasterTaskList comment for more info.

Check how many times the player has ever completed a narrative Task. Very efficient.

Very powerful for scripting, for example we could check if the player has talked to an NPC at least 10 times and then change the dialogue
text to a more personalized greeting since the NPC would know the player better.

@return The number of times the Task has been completed by this narrative component.
- `APlayerController GetOwningController() const`
- `APawn GetOwningPawn() const`
- `UNarrativePartyComponent GetParty() const`  
  Return our parties component, if we have one
- `UQuest GetQuestInstance(TSubclassOf<UQuest> QuestClass) const`  
  Given a Quest class return its active quest object if we've started this quest
- `TArray<UQuest> GetSucceededQuests() const`  
  Returns a list of all succeeded quests, in chronological order.
- `bool HasCompletedTask(const UNarrativeDataTask Task, FString Name, int Quantity = 1)`  
  Check if the player has ever completed a given data task. For example you could check if the player has ever talked to a given NPC, taken a certain item, etc
- `bool HasDialogueAvailable(TSubclassOf<UDialogue> Dialogue, FDialoguePlayParams PlayParams)`  
  Check if calling BeginDialogue on a given dialogue asset would actually play any dialogue.

THIS WILL ONLY WORK ON THE AUTHORITY. Server should use this function then replicate any needed stuff to clients, this will always
return false on clients as they do not have the authority to begin dialogues.

Essentially the same as BeginDialogue, just doesn't actually start the dialogue, just gives you
the bool return value to check if any dialogue would have started.

Same as BeginDialogue, however doesn't actually begin the dialogue.
- `bool IsInDialogue()`  
  Return true if we're in a dialogue

       @return Whether true if we're in a dialogue, false otherwise
- `bool IsQuestFailed(TSubclassOf<UQuest> QuestClass) const`  
  Return true if a given quest has been completed and was failed
@param QuestAsset The quest to check
- `bool IsQuestFinished(TSubclassOf<UQuest> QuestClass) const`  
  Return true if a given quest has been completed, regardless of whether we failed or succeeded the quest
@param QuestAsset The quest to use
- `bool IsQuestInProgress(TSubclassOf<UQuest> QuestClass) const`  
  Return true if a given quest is in progress but false if the quest is finished
@param QuestAsset The quest to check
- `bool IsQuestStartedOrFinished(TSubclassOf<UQuest> QuestClass) const`  
  Return true if a given quest is started or finished
@param QuestAsset The quest to check
- `bool IsQuestSucceeded(TSubclassOf<UQuest> QuestClass) const`  
  Return true if a given quest has been completed and was succeeded
@param QuestAsset The quest to check
- `bool RestartQuest(TSubclassOf<UQuest> QuestClass, FName StartFromID = NAME_None)`  
  Restart a given quest. Will only actually restart the quest if it has been started.
If the quest hasn't started,  this will do nothing.

@param QuestAsset The quest to use
@param StartFromID If this is set to a valid ID in the quest, we'll skip to this quest state instead of playing the quest its default start state

@return Whether or not the quest was restarted or not
- `ServerSelectDialogueOption(FName OptionID)`  
  Tell the server we've selected a dialogue option
- `ServerTryExitDialogue(EExitDialogueReason Reason)`
- `ServerTrySkipCurrentDialogueLine()`  
  Attempt to skip the current dialogue line
- `bool TryExitDialogue(EExitDialogueReason Reason)`  
  Exit the dialogue, but authoritatively check we're allowed to before doing so.

       @return Whether the dialogue was successfully exited
- `TrySelectDialogueOption(UDialogueNode_Player Option)`  
  Called by the client when it tries selecting a dialogue option - the server ultimately decides if this goes through or not,
       though the server validates replies before it sends them to you, so this should never fail
- `bool TrySkipCurrentDialogueLine()`  
  Attempt to skip the current dialogue line
       Return true if we skipped the line, or if called on a client return true if we were able to ask server to skip the line (isn't guaranteed, server still needs to auth it)

---

