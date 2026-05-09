### UComboGraphEdge


**属性**:

- `FLinearColor EdgeColour []`
- `UComboGraphNodeBase EndNode [End or child node for this edge]`
- `UComboGraphNodeBase StartNode [Start or parent node for this edge]`
- `TSoftClassPtr<UAnimNotify> TransitionAnimNotify [Configure the Anim Notify class to consider when Transition Behavior is set to transition on a specific notify frame.

By the time an input trigger is received, combo transition will happen when the animation
reaches this notify state or immediately if animation current time frame is passed the notify state.]`
- `FName TransitionAnimNotifyName [Configure the Anim Notify name (skeleton notify) to consider when Transition Behavior is set to transition on a specific notify frame.

By the time an input trigger is received, combo transition will happen when the animation
reaches this notify state or immediately if animation current time frame is passed the notify state.]`
- `EComboGraphTransitionBehavior TransitionBehavior [Transition Behavior.]`
- `UInputAction TransitionInput [The EnhancedInput Action to consider to transition to next node.]`
- `FGameplayTag TransitionInputTagOverride [当 TransitionInput 无法在 Ability 输入表中反查到 Tag 时，用于 Combo 过渡匹配的 Gameplay Tag 兜底。]`
- `EComboGraphTransitionInputEvent TriggerEvent [The EnhancedInput Trigger Event type to use for the transition activation.]`

---

