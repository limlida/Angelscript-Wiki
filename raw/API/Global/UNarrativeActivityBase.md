### UNarrativeActivityBase


Base class for settlement and NPC activities.

**属性**:

- `FText ActivityName [The name of the this activity]`
- `FGameplayTagContainer BlockTags [We'll block the activity from running if the has any of these tags]`
- `FGameplayTagContainer OwnedTags [The tags we'll grant the NPC/Settlement when this ability starts]`
- `FGameplayTagContainer RequireTags [We'll require these tags to be on the owner before we run the activity]`


**方法**:

- `bool CanRunActivity(FString& FailReason) const`  
  Allows the behavior to specify whether it can be ran. For example we may have a MoveToLocation activity - that would want to check
       the NPC is not falling using this function and deny the activity to run if we were falling.
- `FString DescribeActivity() const`  
  Debugging tools use this to grab a description of the behavior
- `bool EndActivity()`  
  Ends the activity - the activity component can then select a new one for us to do.
- `K2_EndActivity()`  
  Called after the tree has finished running.
- `RunActivity()`  
  Called after the tree has started running and blackboard values have been set. Do anything you need in here!

---

