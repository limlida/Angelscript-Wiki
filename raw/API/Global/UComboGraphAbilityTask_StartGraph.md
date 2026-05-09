### UComboGraphAbilityTask_StartGraph


This task is meant to be used to start / activate a Combo Graph Asset from within a Gameplay Ability

**属性**:

- `FComboGraphAbilityTaskDelegate EventReceived [Event triggered when a combo graph node is listening for specific tags (either via EventTags or from Cues / Effects Containers) and owning avatar actor is receiving those events]`
- `FComboGraphAbilityTaskDelegate OnGraphEnd [Event invoked when the combat graph ends (usually when a montage completes, meaning no further input registered, thus should end the ability)]`
- `FComboGraphAbilityTaskDelegate OnGraphStart [Event invoked when the combat graph is started.]`
- `FComboGraphMontageNodeStartDelegate OnMontageNodeEnd`
- `FComboGraphMontageNodeStartDelegate OnMontageNodeStart [Fired when entering a montage node with a non-empty MontageStanceName (bind on the task returned from CreateStartComboGraph).]`


**方法**:

- `UComboGraphNodeAnimBase GetCurrentNode() const`  
  Returns the currently active node for the task
- `UComboGraphNodeAnimBase GetPreviousNode() const`  
  Returns the node that was active just before the current one

---

