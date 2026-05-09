### UCommonTabListWidgetBase


Base class for a list of selectable tabs that correspondingly activate and display an arbitrary widget in a linked switcher

**属性**:

- `UInputAction NextTabEnhancedInputAction [The input action to listen for causing the next tab to be selected]`
- `FDataTableRowHandle NextTabInputActionData [The input action to listen for causing the next tab to be selected]`
- `FOnTabButtonCreation__CommonTabListWidgetBase OnTabButtonCreation [Broadcasts when a new tab is created.]`
- `FOnTabButtonRemoval__CommonTabListWidgetBase OnTabButtonRemoval [Broadcasts when a new tab is created.]`
- `FOnTabListRebuilt__CommonTabListWidgetBase OnTabListRebuilt [Broadcasts when the tab list has been rebuilt (after a new tab has been inserted rather than added to the end).]`
- `FOnTabSelected__CommonTabListWidgetBase OnTabSelected [Broadcasts when a new tab is selected.]`
- `UInputAction PreviousTabEnhancedInputAction [The input action to listen for causing the previous tab to be selected]`
- `FDataTableRowHandle PreviousTabInputActionData [The input action to listen for causing the previous tab to be selected]`
- `bool bAutoListenForInput [Whether to register to handle tab list input immediately upon construction]`
- `bool bDeferRebuildingTabList [Whether to defer until next tick rebuilding tab list when inserting new tab (rather than adding to the end).
Useful if inserting multiple tabs in the same tick as the tab list will only be rebuilt once.]`
- `bool bShouldWrapNavigation [Whether pressing next/prev tab on the last/first tab should wrap selection to the beginning/end or stay at the end/beginning.]`


**方法**:

- `DisableTabWithReason(FName TabNameID, FText Reason)`  
  Disables the tab associated with the given ID with a reason
- `FName GetActiveTab() const`  
  @return The currently active (selected) tab
- `UCommonAnimatedSwitcher GetLinkedSwitcher() const`  
  @return The switcher that this tab list is associated with and manipulates
- `FName GetSelectedTabId() const`
- `UCommonButtonBase GetTabButtonBaseByID(FName TabNameID) const`  
  Returns the tab button matching the ID, if found
- `int GetTabCount() const`
- `FName GetTabIdAtIndex(int Index) const`
- `HandlePostLinkedSwitcherChanged_BP()`
- `HandlePreLinkedSwitcherChanged_BP()`
- `HandleTabCreation(FName TabNameID, UCommonButtonBase TabButton)`
- `HandleTabRemoval(FName TabNameID, UCommonButtonBase TabButton)`
- `bool HasTabContentWidget(FName TabNameId) const`  
  Checks if a tab has an associated content widget
- `bool RegisterTab(FName TabNameID, TSubclassOf<UCommonButtonBase> ButtonWidgetType, UWidget ContentWidget, int TabIndex = - 1)`  
  INDEX_NONE
- `bool RegisterTabContentWidget(FName TabNameId, UWidget ContentWidget)`  
  Registers a content widget with a previously created tab with ID TabNameId. If a linked switcher has been setup, it will also be added to it
- `RemoveAllTabs()`
- `bool RemoveTab(FName TabNameID)`
- `bool SelectTabByID(FName TabNameID, bool bSuppressClickFeedback = false)`  
  Selects the tab registered under the provided name ID
@param TabNameID The name ID for the tab given when registered
- `SetLinkedSwitcher(UCommonAnimatedSwitcher CommonSwitcher)`  
  Establishes the activatable widget switcher instance that this tab list should interact with
@param CommonSwitcher The switcher that this tab list should be associated with and manipulate
- `SetListeningForInput(bool bShouldListen)`
- `SetTabEnabled(FName TabNameID, bool bEnable)`  
  Sets whether the tab associated with the given ID is enabled/disabled
- `SetTabInteractionEnabled(FName TabNameID, bool bEnable)`  
  Sets whether the tab associated with the given ID is interactable
- `SetTabVisibility(FName TabNameID, ESlateVisibility NewVisibility)`  
  Sets the visibility of the tab associated with the given ID

---

