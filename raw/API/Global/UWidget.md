### UWidget


This is the base class for all wrapped Slate controls that are exposed to UObjects.

**属性**:

- `ESlateAccessibleBehavior AccessibleBehavior [Whether or not the widget is accessible, and how to describe it. If set to custom, additional customization options will appear.]`
- `ESlateAccessibleBehavior AccessibleSummaryBehavior [How to describe this widget when it's being presented through a summary of a parent widget. If set to custom, additional customization options will appear.]`
- `FText AccessibleSummaryText [When AccessibleSummaryBehavior is set to Custom, this is the text that will be used to describe the widget.]`
- `FText AccessibleText [When AccessibleBehavior is set to Custom, this is the text that will be used to describe the widget.]`
- `EMouseCursor Cursor [The cursor to show when the mouse is over the widget]`
- `EFlowDirectionPreference FlowDirectionPreference [Allows you to set a new flow direction]`
- `UWidgetNavigation Navigation [The navigation object for this widget is optionally created if the user has configured custom
navigation rules for this widget in the widget designer.  Those rules determine how navigation transitions
can occur between widgets.]`
- `EWidgetPixelSnapping PixelSnapping [If the widget will draw snapped to the nearest pixel.  Improves clarity but might cause visibile stepping in animation]`
- `FVector2D RenderTransformPivot [The render transform pivot controls the location about which transforms are applied.
This value is a normalized coordinate about which things like rotations will occur.]`
- `UPanelSlot Slot [The parent slot of the UWidget.  Allows us to easily inline edit the layout controlling this widget.]`
- `FText ToolTipText [Tooltip text to show when the user hovers over the widget with the mouse]`
- `UWidget ToolTipWidget [Tooltip widget to show when the user hovers over the widget with the mouse]`
- `bool bCanChildrenBeAccessible [Whether or not children of this widget can appear as distinct accessible widgets.]`
- `bool bIsEnabled [Sets whether this widget can be modified interactively by the user]`
- `bool bIsVolatile [If true prevents the widget or its child's geometry or layout information from being cached.  If this widget
changes every frame, but you want it to still be in an invalidation panel you should make it as volatile
instead of invalidating it every frame, which would prevent the invalidation panel from actually
ever caching anything.]`
- `bool bOverrideAccessibleDefaults [Override all of the default accessibility behavior and text for this widget.]`
- `bool bOverride_Cursor`


**方法**:

- `ForceLayoutPrepass()`  
  Forces a pre-pass.  A pre-pass caches the desired size of the widget hierarchy owned by this widget.
One pre-pass already happens for every widget before Tick occurs.  You only need to perform another
pre-pass if you are adding child widgets this frame and want them to immediately be visible this frame.
- `ForceVolatile(bool bForce)`  
  Sets the forced volatility of the widget.
- `FText GetAccessibleSummaryText() const`  
  Gets the accessible summary text from the underlying Slate accessible widget.
@return The accessible summary text of the underlying Slate accessible widget. Returns an empty text if
accessibility is dsabled or the underlying accessible widget is invalid.
- `FText GetAccessibleText() const`  
  Gets the accessible text from the underlying Slate accessible widget
@return The accessible text of the underlying Slate accessible widget. Returns an empty text if
accessibility is dsabled or the underlying accessible widget is invalid.
- `FGeometry GetCachedGeometry() const`  
  Gets the last geometry used to Tick the widget.  This data may not exist yet if this call happens prior to
the widget having been ticked/painted, or it may be out of date, or a frame behind.

We recommend not to use this data unless there's no other way to solve your problem.  Normally in Slate we
try and handle these issues by making a dependent widget part of the hierarchy, as to avoid frame behind
or what are referred to as hysteresis problems, both caused by depending on geometry from the previous frame
being used to advise how to layout a dependent object the current frame.
- `EWidgetClipping GetClipping() const`  
  Gets the clipping state of this widget.
- `FVector2D GetDesiredSize() const`  
  Gets the widgets desired size.
NOTE: The underlying Slate widget must exist and be valid, also at least one pre-pass must
      have occurred before this value will be of any use.

@return The widget's desired size
- `UGameInstance GetGameInstance() const`  
  Gets the game instance associated with this UI.
@return a pointer to the owning game instance
- `bool GetIsEnabled() const`  
  Gets the current enabled status of the widget
- `ULocalPlayer GetOwningLocalPlayer() const`  
  Gets the local player associated with this UI.
@return The owning local player.
- `APlayerController GetOwningPlayer() const`  
  Gets the player controller associated with this UI.
@return The player controller that owns the UI.
- `FGeometry GetPaintSpaceGeometry() const`
- `UPanelWidget GetParent() const`  
  Gets the parent widget
- `float32 GetRenderOpacity() const`  
  Gets the current visibility of the widget.
- `float32 GetRenderTransformAngle() const`
- `FGeometry GetTickSpaceGeometry() const`
- `ESlateVisibility GetVisibility() const`  
  Gets the current visibility of the widget.
- `bool HasAnyUserFocus() const`  
  Returns true if this widget is focused by any user.
- `bool HasFocusedDescendants() const`  
  Returns true if any descendant widget is focused by any user.
- `bool HasKeyboardFocus() const`  
  Checks to see if this widget currently has the keyboard focus

@return  True if this widget has keyboard focus
- `bool HasMouseCapture() const`  
  Checks to see if this widget is the current mouse captor
@return  True if this widget has captured the mouse
- `bool HasMouseCaptureByUser(int UserIndex, int PointerIndex = - 1) const`  
  Checks to see if this widget is the current mouse captor
     @param User index to check for capture
     @param Optional pointer index to check for capture
     @return  True if this widget has captured the mouse with given user and pointer
- `bool HasUserFocus(APlayerController PlayerController) const`  
  Returns true if this widget is focused by a specific user.
- `bool HasUserFocusedDescendants(APlayerController PlayerController) const`  
  Returns true if any descendant widget is focused by a specific user.
- `InvalidateLayoutAndVolatility()`  
  Invalidates the widget from the view of a layout caching widget that may own this widget.
will force the owning widget to redraw and cache children on the next paint pass.
- `bool IsHovered() const`  
  Returns true if the widget is currently being hovered by a pointer device
- `bool IsInViewport() const`  
  @return true if the widget was added to the viewport using AddToViewport or AddToPlayerScreen.
- `bool IsRendered() const`  
  Returns true if the widget is Visible, HitTestInvisible or SelfHitTestInvisible and the Render Opacity is greater than 0.
- `bool IsVisible() const`  
  Returns true if the widget is Visible, HitTestInvisible or SelfHitTestInvisible.
- `AddFieldValueChangedDelegate(FFieldNotificationId FieldId, FFieldValueChangedDynamicDelegate Delegate = FFieldValueChangedDynamicDelegate ( ))`
- `BroadcastFieldValueChanged(FFieldNotificationId FieldId)`
- `RemoveFieldValueChangedDelegate(FFieldNotificationId FieldId, FFieldValueChangedDynamicDelegate Delegate = FFieldValueChangedDynamicDelegate ( ))`
- `RemoveFromParent()`  
  Removes the widget from its parent widget.  If this widget was added to the player's screen or the viewport
it will also be removed from those containers.
- `ResetCursor()`  
  Resets the cursor to use on the widget, removing any customization for it.
- `SetAllNavigationRules(EUINavigationRule Rule, FName WidgetToFocus)`  
  Sets the widget navigation rules for all directions. This can only be called on widgets that are in a widget tree.
@param Rule The rule to use when navigation is taking place
@param WidgetToFocus When using the Explicit rule, focus on this widget
- `SetClipping(EWidgetClipping InClipping)`  
  Sets the clipping state of this widget.
- `SetCursor(EMouseCursor InCursor)`  
  Sets the cursor to show over the widget.
- `SetFocus()`  
  Sets the focus to this widget for the owning user
- `SetIsEnabled(bool bInIsEnabled)`  
  Sets the current enabled status of the widget
- `SetKeyboardFocus()`  
  Sets the focus to this widget.
- `SetNavigationRuleBase(EUINavigation Direction, EUINavigationRule Rule)`  
  Sets the widget navigation rules for a specific direction. This can only be called on widgets that are in a widget tree. This works only for non Explicit, non Custom and non CustomBoundary Rules.
@param Direction
@param Rule The rule to use when navigation is taking place
- `SetNavigationRuleCustom(EUINavigation Direction, FCustomWidgetNavigationDelegate InCustomDelegate = FCustomWidgetNavigationDelegate ( ))`  
  Sets the widget navigation rules for a specific direction. This can only be called on widgets that are in a widget tree. This works only for Custom Rule.
@param Direction
@param InCustomDelegate Custom Delegate that will be called
- `SetNavigationRuleCustomBoundary(EUINavigation Direction, FCustomWidgetNavigationDelegate InCustomDelegate = FCustomWidgetNavigationDelegate ( ))`  
  Sets the widget navigation rules for a specific direction. This can only be called on widgets that are in a widget tree. This works only for CustomBoundary Rule.
@param Direction
@param InCustomDelegate Custom Delegate that will be called
- `SetNavigationRuleExplicit(EUINavigation Direction, UWidget InWidget)`  
  Sets the widget navigation rules for a specific direction. This can only be called on widgets that are in a widget tree. This works only for Explicit Rule.
@param Direction
@param InWidget Focus on this widget instance
- `SetRenderOpacity(float32 InOpacity)`  
  Sets the visibility of the widget.
- `SetRenderScale(FVector2D Scale)`
- `SetRenderShear(FVector2D Shear)`
- `SetRenderTransform(FWidgetTransform InTransform)`
- `SetRenderTransformAngle(float32 Angle)`
- `SetRenderTransformPivot(FVector2D Pivot)`
- `SetRenderTranslation(FVector2D Translation)`
- `SetToolTip(UWidget Widget)`  
  Sets a custom widget as the tooltip of the widget.
- `SetToolTipText(FText InToolTipText)`  
  Sets the tooltip text for the widget.
- `SetUserFocus(APlayerController PlayerController)`  
  Sets the focus to this widget for a specific user (if setting focus for the owning user, prefer SetFocus())
- `SetVisibility(ESlateVisibility InVisibility)`  
  Sets the visibility of the widget.
- `FWidgetTransform GetRenderTransform() const`

---

