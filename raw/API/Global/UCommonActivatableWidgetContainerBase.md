### UCommonActivatableWidgetContainerBase


Base of widgets built to manage N activatable widgets, displaying one at a time.
Intentionally meant to be black boxes that do not expose child/slot modification like a normal panel widget.

**属性**:

- `ETransitionCurve TransitionCurveType [The curve function type to apply to the transition animation]`
- `float32 TransitionDuration [The total duration of a single transition between widgets]`
- `ECommonSwitcherTransitionFallbackStrategy TransitionFallbackStrategy [Controls how we will choose another widget if a transitioning widget is removed during the transition.
Note for Queues and Stacks, ECommonSwitcherTransitionFallbackStrategy::Previous is a good option.]`
- `ECommonSwitcherTransition TransitionType [The type of transition to play between widgets]`
- `bool bResetPoolWhenReleasingSlateResources [Whether to completely reset the pool of widgets when slate resources are released.
This usually happens when changing maps. You may not want to have all frontend screens loaded taking up memory while in game and vice versa.
Enabling this means widgets will have to be loaded again when re-entering the map next time.]`


**方法**:

- `UCommonActivatableWidget AddWidget(TSubclassOf<UCommonActivatableWidget> ActivatableWidgetClass)`  
  Adds a widget of the given class to the container.
Note that all widgets added to the container are pooled, so the caller should not try to cache and re-use the created widget.

It is possible for multiple instances of the same class to be added to the container at once, so any instance created in the past
is not guaranteed to be the one returned this time.

So in practice, you should not trust that any prior state has been retained on the returned widget, and establish all appropriate properties every time.
- `ClearWidgets()`
- `UCommonActivatableWidget GetActiveWidget() const`
- `float32 GetTransitionDuration() const`
- `RemoveWidget(UCommonActivatableWidget WidgetToRemove)`
- `SetTransitionDuration(float32 Duration)`

---

