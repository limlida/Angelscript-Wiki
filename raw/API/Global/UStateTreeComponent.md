### UStateTreeComponent


**属性**:

- `FStateTreeReferenceOverrides LinkedStateTreeOverrides [Overrides for linked State Trees. This table is used to override State Tree references on linked states.
If a linked state's tag is exact match of the tag specified on the table, the reference from the table is used instead.]`
- `FStateTreeRunStatusChanged OnStateTreeRunStatusChanged [Called when the run status of the StateTree has changed]`
- `FStateTreeReference StateTreeRef [State Tree asset to run on the component.]`
- `bool bStartLogicAutomatically [If true, the StateTree logic is started on begin play. Otherwise, StartLogic() needs to be called.]`


**方法**:

- `AddLinkedStateTreeOverrides(FGameplayTag StateTag, FStateTreeReference StateTreeReference)`  
  Add a linked state tree override.
The override won't be set if it doesn't use the StateTreeComponentSchema schema.
- `EStateTreeRunStatus GetStateTreeRunStatus() const`  
  Returns the current run status of the StateTree.
- `RemoveLinkedStateTreeOverrides(FGameplayTag StateTag)`  
  Remove a linked state tree override.
- `SendStateTreeEvent(FStateTreeEvent Event)`  
  Sends event to the running StateTree.
- `SetStartLogicAutomatically(bool bInStartLogicAutomatically)`  
  Sets whether the State Tree is started automatically on begin play.
This function sets the bStartLogicAutomatically property, and should be used mostly from constructions scripts.
If you wish to start the logic manually, call StartLogic().
- `SetStateTree(UStateTree StateTree)`  
  Sets a new state tree.
The state tree won't be set if the logic is running.
- `SetStateTreeReference(FStateTreeReference StateTreeReference)`  
  Sets a new state tree reference.
The state tree reference won't be set if the logic is running.

---

