### UActorGroupingUtils


Helper class for grouping actors in the level editor

**方法**:

- `AddSelectedToGroup()`  
  Activates "Add to Group" mode which allows the user to select a group to append current selection
- `bool CanGroupActors(TArray<AActor> ActorsToGroup) const`  
  Check if the provided list of actors can be grouped together
- `bool CanGroupSelectedActors() const`  
  * Check if the currently selected actors can be grouped together
- `AGroupActor GroupActors(TArray<AActor> ActorsToGroup)`  
  Creates a new group from the provided list of actors removing the actors from any existing groups they are already in
- `AGroupActor GroupSelected()`  
  Creates a new group from the current selection removing the actors from any existing groups they are already in
- `LockSelectedGroups()`  
  Locks any groups in the current selection
- `RemoveSelectedFromGroup()`  
  Removes any groups or actors in the current selection from their immediate parent.
If all actors/subgroups are removed, the parent group will be destroyed.
- `UngroupActors(TArray<AActor> ActorsToUngroup)`  
  Disbands any groups that the provided actors belong to, does not attempt to maintain any hierarchy
- `UngroupSelected()`  
  Disbands any groups in the current selection, does not attempt to maintain any hierarchy
- `UnlockSelectedGroups()`  
  Unlocks any groups in the current selection

---

