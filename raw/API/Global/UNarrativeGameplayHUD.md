### UNarrativeGameplayHUD


Base class for gameplay HUD with narrative.

**属性**:

- `TArray<TObjectPtr<UWidget>> EssentialWidgets [Widgets in here will not be hidden when we ask the UI to hide, usually during cinematics.
TODO possibly use a tag mapping to widget so we can hide various layers]`
- `ANarrativePlayerController OwnerPC [The narrative player controller that owns this widget]`


**方法**:

- `UCommonActivatableWidgetContainerBase GetLayerContainer(FGameplayTag LayerTag)`  
  grab a layers container.
- `UNarrativeMenu OpenMenu(TSubclassOf<UNarrativeMenu> MenuClass, FGameplayTag LayerTag)`  
  Open a menu of some kind.
- `RegisterLayer(FGameplayTag LayerTag, UCommonActivatableWidgetContainerBase LayerWidget)`  
  Register a layer that widgets can be pushed onto.
- `SetHUDHidden(bool bHideHUD, bool bHideEvenEssentialWidgets)`  
  Set whether the hide should be hidden or not
       @param bHideEvenEssentialWidgets whether this should effect even essential widgets, like the dialogue options etc.
- `ShowMajorNotification(FText NotificationText, FText MajorNotificationSubtext, float Duration = 5.000000, bool bOverrideCurrentNotification = true)`  
  Show a major notification
- `ShowNotification(FText NotificationText, float Duration = 5.000000)`  
  Show a notification - the UMG widget handles implementing this. bOverrideCurrentNotification is only relevant for major notifications - minors are shown in a stack.

---

