### UStateTreeNodeBlueprintBase


**属性**:

- `FText Description [Description of the node.]`
- `FColor IconColor [Color of the icon.]`
- `FName IconName [Name of the icon in format:
             StyleSetName | StyleName [ | SmallStyleName | StatusOverlayStyleName]
             SmallStyleName and StatusOverlayStyleName are optional.
             Example: "StateTreeEditorStyle|Node.Animation"]`


**方法**:

- `FText GetDescription(EStateTreeNodeFormatting Formatting) const`  
  Event to implement to get node description.
- `RequestTransition(FStateTreeStateLink TargetState, EStateTreeTransitionPriority Priority = EStateTreeTransitionPriority :: Normal)`  
  Request state transition.
- `SendEvent(FStateTreeEvent Event)`  
  Sends event to the StateTree.

---

