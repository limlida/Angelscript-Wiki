### UNarrativeTrigger


Triggers can be activated,or deactivated at any time for any reason you like. They can fire events when began or ended,
or do any number of other things by overidding activate/deactivate.

A great example usage of these is making an NPC do a certain activity like sleep in a bed during a certain time of day.

**属性**:

- `ANarrativeCharacter OwnerCharacter []`
- `TArray<UNarrativeEvent> TriggerEvents [Events that this trigger should activate/deactivate]`
- `bool bIsActive [Whether the trigger is active right now]`


**方法**:

- `Activate()`
- `Deactivate()`
- `FString GetDescription() const`  
  Return a string saying what this trigger is
- `Initialize()`  
  Bind delegates in here to activate or deactivate your trigger, set a timer, etc.
- `bool IsActive()`  
  Return whether the trigger is active or not
- `OnActivate()`
- `OnDeactivate()`

---

