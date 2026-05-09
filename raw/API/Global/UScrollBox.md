### UScrollBox


An arbitrary scrollable collection of widgets.  Great for presenting 10-100 widgets in a list.  Doesn't support virtualization.

**属性**:

- `bool AllowOverscroll [Disable to stop scrollbars from activating inertial overscrolling]`
- `bool AlwaysShowScrollbar`
- `bool AlwaysShowScrollbarTrack`
- `bool BackPadScrolling [Whether to back pad this scroll box, allowing user to scroll backward until child contents are no longer visible]`
- `EConsumeMouseWheel ConsumeMouseWheel [When mouse wheel events should be consumed.]`
- `bool FrontPadScrolling [Whether to front pad this scroll box, allowing user to scroll forward until child contents are no longer visible]`
- `EDescendantScrollDestination NavigationDestination [Sets where to scroll a widget to when using explicit navigation or if ScrollWhenFocusChanges is enabled]`
- `float32 NavigationScrollPadding [The amount of padding to ensure exists between the item being navigated to, at the edge of the
scrollbox.  Use this if you want to ensure there's a preview of the next item the user could scroll to.]`
- `FOnScrollBoxFocusLostEvent OnFocusLost [Called when the scroll has changed]`
- `FOnScrollBoxFocusReceivedEvent OnFocusReceived [Called when the scroll has changed]`
- `FOnScrollBarVisibilityChangedEvent OnScrollBarVisibilityChanged [Called when the scrollbar visibility has changed]`
- `FOnUserScrolledEvent OnUserScrolled [Called when the scroll has changed]`
- `EOrientation Orientation [The orientation of the scrolling and stacking in the box.]`
- `float32 ScrollAnimationInterpolationSpeed`
- `ESlateVisibility ScrollBarVisibility [Visibility]`
- `EScrollWhenFocusChanges ScrollWhenFocusChanges [Scroll behavior when user focus is given to a child widget]`
- `FMargin ScrollbarPadding [The margin around the scrollbar]`
- `FVector2D ScrollbarThickness [The thickness of the scrollbar thumb]`
- `float32 WheelScrollMultiplier [The multiplier to apply when wheel scrolling]`
- `FScrollBarStyle WidgetBarStyle [The bar style]`
- `FScrollBoxStyle WidgetStyle [The style]`
- `bool bAllowRightClickDragScrolling [Option to disable right-click-drag scrolling]`
- `bool bAnimateWheelScrolling [True to lerp smoothly when wheel scrolling along the scroll box]`
- `bool bConsumePointerInput [Option to pass touch input events to widgets behind the ScrollBox.]`
- `bool bEnableTouchScrolling [True to allow scrolling using touch input.]`
- `bool bIsFocusable [If true, scrollbox can receive focus. On gamepad, ensure AnalogMouseWheelKey is set to allow user interaction]`


**方法**:

- `EndInertialScrolling()`  
  Instantly stops any inertial scrolling that is currently in progress
- `FKey GetAnalogMouseWheelKey() const`
- `bool GetConsumePointerInput() const`
- `bool GetIsFocusable() const`
- `bool GetIsScrolling() const`  
  Returns true when the widget is currently inertial scrolling
- `float32 GetOverscrollOffset() const`  
  Gets the overscroll offset of the scrollbox in Slate Units.
- `float32 GetOverscrollPercentage() const`  
  Gets the overscroll offset of the scrollbox in percentage from its view size.
- `float32 GetScrollOffset() const`  
  Gets the scroll offset of the scrollbox in Slate Units.
- `float32 GetScrollOffsetOfEnd() const`  
  Gets the scroll offset of the bottom of the ScrollBox in Slate Units.
- `float32 GetViewFraction() const`  
  Gets the fraction currently visible in the scrollbox
- `float32 GetViewOffsetFraction() const`
- `ScrollToEnd()`  
  Scrolls the ScrollBox to the bottom instantly during the next layout pass.
- `ScrollToStart()`  
  Scrolls the ScrollBox to the top instantly
- `ScrollWidgetIntoView(UWidget WidgetToFind, bool AnimateScroll = true, EDescendantScrollDestination ScrollDestination = EDescendantScrollDestination :: IntoView, float32 Padding = 0.000000)`  
  Scrolls the ScrollBox to the widget during the next layout pass.
- `SetAllowOverscroll(bool NewAllowOverscroll)`
- `SetAlwaysShowScrollbar(bool NewAlwaysShowScrollbar)`
- `SetAnalogMouseWheelKey(FKey InMouseWheelKey)`
- `SetAnimateWheelScrolling(bool bShouldAnimateWheelScrolling)`
- `SetConsumeMouseWheel(EConsumeMouseWheel NewConsumeMouseWheel)`
- `SetConsumePointerInput(bool bInConsumePointerInput)`
- `SetIsFocusable(bool bInIsFocusable)`
- `SetNavigationDestination(EDescendantScrollDestination NewNavigationDestination)`
- `SetOrientation(EOrientation NewOrientation)`
- `SetScrollAnimationInterpolationSpeed(float32 NewScrollAnimationInterpolationSpeed)`
- `SetScrollbarPadding(FMargin NewScrollbarPadding)`
- `SetScrollbarThickness(FVector2D NewScrollbarThickness)`
- `SetScrollBarVisibility(ESlateVisibility NewScrollBarVisibility)`
- `SetScrollOffset(float32 NewScrollOffset)`  
  Updates the scroll offset of the scrollbox.
@param NewScrollOffset is in Slate Units.
- `SetScrollWhenFocusChanges(EScrollWhenFocusChanges NewScrollWhenFocusChanges)`
- `SetWheelScrollMultiplier(float32 NewWheelScrollMultiplier)`

---

