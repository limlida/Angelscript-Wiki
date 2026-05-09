### UNarrativeTask


Tasks are blueprints that manage a task for the player to complete. This is mostly used by the quest system.

**属性**:

- `int CurrentProgress [The current progress this task has made]`
- `FText DescriptionOverride [In Narrative 3, tasks now autogenerate their descriptions to save designers needing to input it! For example the GoToLocation task
that comes with Narrative takes the location name as input and then returns "Go to {LocationName}."

However if you want to override the description you can do so entering one here.]`
- `FTaskNavigationMarker MarkerSettings [Should we add a navigation marker to the world for the duration of this task]`
- `UTalesComponent OwningComp []`
- `APlayerController OwningController []`
- `APawn OwningPawn []`
- `UQuest OwningQuest []`
- `int RequiredQuantity [The amount of times the task needs to be completed before the quest updates]`
- `float32 TickInterval [Defines how often the task should tick. Set to 0 if you want to disable ticking.

      To optimize performance you should try avoid having tasks that tick at all, for example if your Task was is "ObtainItem",
      you'd bind to an OnInventoryModified delegate in BeginTask and check the progress there! That way, you're only checking
      the task when the players inventory updates, instead of just blindly checking over and over again.]`
- `bool bHidden [Check this box to hide this task in the narrative UI!]`
- `bool bOptional [Whether or not this task is optional]`


**方法**:

- `AddProgress(int ProgressToAdd = 1)`  
  Allows you to add some progress to the quantity - negative values can also be used to subtract progress!
- `CompleteTask()`  
  [server only] completes the task, by setting the current progress to required amount
- `AActor GetNavigationMarkerAttachActor() const`  
  Use this if you want to return an actor the navigation marker should attach to
- `FVector GetNavigationMarkerLocation() const`  
  Don't want to use the hardcoded navigation marker cooords? Override this and your task can return a dynamic value the location marker should go to!
- `UQuestBranch GetOwningBranch() const`
- `FText GetTaskDescription() const`  
  Implement this if you want to autogenerate task descriptions that the editor UI and narrative UI will use,
      meaning you don't have to write a description for every task in your game."
- `FText GetTaskNodeDescription() const`  
  Optional special version of GetTaskDescription that is used for displaying info the editor nodes,
      but won't be used for ingame descriptions.
- `FText GetTaskProgressText() const`  
  By default quest tasks display the task, followed by progress text ie: Find 10 Logs (6/10)
       If you want to change the (6/10) to display something else, you can override this function.
- `bool IsComplete() const`  
  Checks whether this task is currently complete or not
- `BeginTask()`  
  Called when the task is began - use this to check your task right away, bind any delegates, do anything you need
- `EndTask()`  
  Called when the task get deactivated (when all of the tasks on its branch are completed and the player has moved on in the quest)

       If you're looking for a function that is called when the task is completed use OnTaskCompleted
- `OnTaskCompleted()`  
  Called when the task is completed. Keep in mind this function can be called multiple times as narrative supports uncompleting tasks
       as well as completing
- `SetProgress(int NewProgress)`  
  [server only] Set the progress of this task, which may complete it when task reaches required progress.
- `SpawnDefaultNavigationMarker()`  
  Spawn in the navigation marker for this quest task. BP Exposed as you sometimes want to call this to refresh the marker, perhaps because an actor has been spawned.
- `SpawnNavigationMarker(FVector MarkerLocation, AActor AttachActor = nullptr)`
- `TickTask()`  
  A function that repeatedly gets called in order to track progress. Generally try making tasks event based if you can, however
       sometimes tasks need to tick. Note that this function doesn't get called on the client, only the server, as tasks are server auth
       so client doesn't really have any need to check the progress of a task

---

