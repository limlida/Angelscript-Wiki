### UCommonActivatableWidget


The base for widgets that are capable of being "activated" and "deactivated" during their lifetime without being otherwise modified or destroyed.

This is generally desired for one or more of the following purposes:
    - This widget can turn on/off without being removed from the hierarchy (or otherwise reconstructing the underlying SWidgets), so Construct/Destruct are insufficient
    - You'd like to be able to "go back" from this widget, whether that means back a breadcrumb, closing a modal, or something else. This is built-in here.
    - This widget's place in the hierarchy is such that it defines a meaningful node-point in the tree of activatable widgets through which input is routed to all widgets.

By default, an activatable widget:
    - Is not automatically activated upon construction
    - Does not register to receive back actions (or any other actions, for that matter)
    - If classified as a back handler, is automatically deactivated (but not destroyed) when it receives a back action

Note that removing an activatable widget from the UI (i.e. triggering Destruct()) will always deactivate it, even if the UWidget is not destroyed.
Re-constructing the underlying SWidget will only result in re-activation if auto-activate is enabled.

**属性**:

- `TSoftObjectPtr<UCommonInputActionDomain> ActionDomainOverride [Enable to override the inherited ActionDomain from owning CommonActivatableWidget.]`
- `ESlateVisibility ActivatedVisibility []`
- `FOnWidgetActivationChanged BP_OnWidgetActivated [Fires when the widget is activated.]`
- `FOnWidgetActivationChanged BP_OnWidgetDeactivated [Fires when the widget is deactivated.]`
- `ESlateVisibility DeactivatedVisibility []`
- `UInputMappingContext InputMapping [Optional mapping context to be applied & removed on activation & deactivation respectfully.]`
- `int InputMappingPriority [Enhanced Input priority. Higher priority input mappings will be prioritized over mappings with a lower priority.]`
- `FText OverrideBackActionDisplayName [You can specify an override for display name for the back action. If left empty, the default will be used.]`
- `bool bAutoActivate [True to automatically activate upon construction]`
- `bool bAutoRestoreFocus [True to prefer automatically restoring focus to the widget that was focused when this widget last became the non-leafmost-active-widget.
If true and a valid restoration candidate exists, we'll use that. If it doesn't, we rely on GetDesiredFocusTarget()
If false, we simply always rely on GetDesiredFocusTarget()]`
- `bool bIsActive []`
- `bool bIsBackActionDisplayedInActionBar [True to receive "Back" actions automatically. Custom back handler behavior can be provided, default is to deactivate.]`
- `bool bIsBackHandler [True to receive "Back" actions automatically. Custom back handler behavior can be provided, default is to deactivate.]`
- `bool bIsModal [True to have this widget be treated as a root node for input routing, regardless of its actual parentage.
Should seldom be needed, but useful in cases where a child widget should prevent all action processing by parents, even though they remain active (ex: modal popup menu).]`
- `bool bOverrideActionDomain`
- `bool bSetVisibilityOnActivated []`
- `bool bSetVisibilityOnDeactivated []`
- `bool bSupportsActivationFocus [True if this widget is a candidate to receive/route focus or specify a desired UIInputConfig when active.
Primary reason for disabling is for utility sub-widgets within a larger screen that possess actions, but are never
intended to be involved in navigation or dictate changes to the active UI input config.]`


**方法**:

- `ActivateWidget()`
- `BindVisibilityToActivation(UCommonActivatableWidget ActivatableWidget)`  
  Bind our visibility to the activation of another widget, useful for making mouse collisions behave similiar to console navigation w.r.t activation
Will immediately update visibility based on the bound widget activation & visibilites set by SetBindVisibilities.

@param       ActivatableWidget               - The widget whose activation / deactivation will modify our visibility
- `UWidget BP_GetDesiredFocusTarget() const`  
  Implement to provide the desired widget to focus if/when this activatable becomes the primary active widget.
Note: This is a fallback used only if the native class parentage does not provide a target.
- `FUIInputConfig GetDesiredInputConfig() const`  
  Implement to provide the input config to use when this widget is activated. Keep in mind when all widgets
are deactivated, CommonUI will not attempt to automatically restore the input config to before any widget was active.
Note: This is a fallback used only if the native class parentage does not provide an input config.
- `OnActivated()`
- `OnDeactivated()`
- `bool OnHandleBackAction()`  
  Override in BP implementations to provide custom behavior when receiving a back action
Note: Only called if native code in the base class hasn't handled it in NativeOnHandleBackAction
- `ClearFocusRestorationTarget()`  
  Clears the cached focus target that's set when bAutoRestoreFocus is true
- `DeactivateWidget()`
- `UWidget GetDesiredFocusTarget() const`  
  Returns the desired widget to focus when this Widget Activates.
- `bool IsActivated() const`
- `RequestRefreshFocus()`  
  Ask for focus to be re-set to our current DesiredFocusTarget,
but only if our node is currently the leaf-most active node (no stealing!).
This is useful for complex cases like: the buttons animate in from off-screen,
or the buttons are deeply nested in a multi-switcher hierarchy and it would be burdensome
to wrap each element in a CommonActivatableWidget.
- `SetBindVisibilities(ESlateVisibility OnActivatedVisibility, ESlateVisibility OnDeactivatedVisibility, bool bInAllActive)`  
  Visibilities to use for when bound widgets in BindVisibilityToActivation are activated.

@param       OnActivatedVisibility   - Visibility for when bound widgets are active
@param       OnDeactivatedVisibility - Visibility for when bound widgets are not active, not used if this widget has activation / deactivation visibilities
@param       bInAllActive                    - True if we should switch to activated visibility only when all bound widgets are active

---

