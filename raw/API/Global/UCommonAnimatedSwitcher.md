### UCommonAnimatedSwitcher


A widget switcher that activates / deactivates CommonActivatableWidgets, allowing for associated animations to trigger.

**属性**:

- `FOnActiveIndexChangedDelegate OnActiveWidgetIndexChangedBP [Fires when the active widget displayed by the switcher changes]`
- `ETransitionCurve TransitionCurveType [The curve function type to apply to the transition animation]`
- `float32 TransitionDuration [The total duration of a single transition between widgets]`
- `ECommonSwitcherTransitionFallbackStrategy TransitionFallbackStrategy [Controls how we will choose another widget if a transitioning widget is removed during the transition.]`
- `ECommonSwitcherTransition TransitionType [The type of transition to play between widgets]`


**方法**:

- `ActivateNextWidget(bool bCanWrap)`
- `ActivatePreviousWidget(bool bCanWrap)`
- `bool HasWidgets() const`
- `bool IsCurrentlySwitching() const`
- `bool IsTransitionPlaying() const`  
  Is the switcher playing a transition animation?
- `SetDisableTransitionAnimation(bool bDisableAnimation)`

---

