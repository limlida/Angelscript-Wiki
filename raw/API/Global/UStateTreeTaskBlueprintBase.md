### UStateTreeTaskBlueprintBase


* Base class for Blueprint based Tasks.

**属性**:

- `bool bCanEditConsideredForCompletion [True if the user can edit bConsideredForCompletion in the editor.]`
- `bool bConsideredForCompletion [True if the task is considered for completion.
False if the task runs in the background without affecting the state completion.]`
- `bool bShouldCallTickOnlyOnEvents [If set to true, Tick() is called. Default false.]`
- `bool bShouldCopyBoundPropertiesOnExitState [If set to true, copy the values of bound properties before calling ExitState(). Default true.]`
- `bool bShouldCopyBoundPropertiesOnTick [If set to true, copy the values of bound properties before calling Tick(). Default true.]`
- `bool bShouldStateChangeOnReselect [If set to true, the task will receive EnterState/ExitState even if the state was previously active.
Generally this should be true for action type tasks, like playing animation,
and false on state like tasks like claiming a resource that is expected to be acquired on child states.]`


**方法**:

- `BindDelegate(FStateTreeDelegateListener Listener, FStateTreeDynamicDelegate Delegate = FStateTreeDynamicDelegate ( ))`  
  Registers the callback to the listener.
If the listener was previously registered, then unregister it first before registering it again with the new delegate callback.
The listener is bound to a dispatcher in the editor.
- `BroadcastDelegate(FStateTreeDelegateDispatcher Dispatcher)`  
  Broadcasts the dispatcher. It will triggers bound callback (bound with BindDelegate) and bound transitions.
- `FinishTask(bool bSucceeded = true)`  
  Finish the task and sets it's status.
- `ExitState(FStateTreeTransitionResult Transition)`  
  Called when a current state is exited and task is part of active states.
@param Transition Describes the states involved in the transition
- `LatentEnterState(FStateTreeTransitionResult Transition)`  
  Called when a new state is entered and task is part of active states.
Use FinishTask() to set the task execution completed. State completion is controlled by completed tasks.

GameplayTasks and other latent actions should be generally triggered on EnterState. When using a GameplayTasks it's required
to manually cancel active tasks on ExitState if the GameplayTask's lifetime is tied to the State Tree task.

@param Transition Describes the states involved in the transition
- `LatentTick(float DeltaTime)`  
  Called during state tree tick when the task is on active state.
Use FinishTask() to set the task execution completed. State completion is controlled by completed tasks.

Triggering GameplayTasks and other latent action should generally be done on EnterState. Tick is called on each update (or event)
and can cause huge amount of task added if the logic is not handled carefully.
Tick should be generally be used for monitoring that require polling, or actions that require constant ticking.

Note: The method is called only if bShouldCallTick or bShouldCallTickOnlyOnEvents is set.
@param DeltaTime Time since last StateTree tick.
- `StateCompleted(EStateTreeRunStatus CompletionStatus, FStateTreeActiveStates CompletedActiveStates)`  
  Called right after a state has been completed, but before new state has been selected. StateCompleted is called in reverse order to allow to propagate state to other Tasks that
are executed earlier in the tree. Note that StateCompleted is not called if conditional transition changes the state.
@param CompletionStatus Describes the running status of the completed state (Succeeded/Failed).
@param CompletedActiveStates Active states at the time of completion.
- `UnbindDelegate(FStateTreeDelegateListener Listener)`  
  Unregisters the callback bound to the listener.

---

