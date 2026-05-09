### UComboGraphProjectSettings


**属性**:

- `FMargin ContentInternalPadding [The padding within the main node box.]`
- `FMargin ContentMargin [The padding around the main node box.]`
- `TSoftObjectPtr<UInputMappingContext> ContextMapping [Enhanced Input Context Mapping to use to draw edge (transition) icons in Graphs]`
- `FLinearColor DebugActiveColor [Default background color for combo nodes in active states (during debug)]`
- `float32 DebugFadeTime [The duration used to interpolate the background color of nodes from Active to Default color when active states change (no longer active during debug).

If set to 0.0, will disable color interpolation.]`
- `FName DynamicMontageSlotName [The Slot Name to use with dynamic montages, created from sequences]`
- `EComboGraphIconType IconPreference [Icon preference to draw edge (transition) icons in Graph. Can be either Keyboard or Gamepad based]`
- `float32 IconSize [Size of Icons when drawing edges (transitions) in Combo Graphs]`
- `TSoftObjectPtr<UDataTable> IconsDataTable [Path to the DataTable used to draw edge (transition) icons in Graph. Determine mappings between Keys and Icon textures.

This is set by default to an internal DataTables (that you can find in `/ComboGraph/Xelu_Icons/`) that setup texture icons for every keyboard and gamepad key.

Icons are coming from Xelu's Free Controllers & Keyboard Prompts: https://thoseawesomeguys.com/prompts/
Thanks to "Nicolae (Xelu) Berbece" and "Those Awesome Guys" to make it available in the public domain licence under Creative Commons 0 (CC0)]`
- `FLinearColor MontageNodeColor [Default background color for Montage nodes]`
- `TMap<TSoftClassPtr<UAnimNotifyState>,FComboGraphNotifyStateAutoSetup> NotifyStates [Map of Auto Setup Animation Notify States. The key is the Anim Notify State class, the value is the time start / end definition in percent]`
- `float32 PinPadding [The minimum amount of padding to draw around pin connections.]`
- `float32 PinSize [The minimum desired sizes for pin connections.]`
- `FLinearColor SequenceNodeColor [Default background color for Sequence nodes]`
- `EComboGraphNetworkSyncTypeSetting SyncTypeOnComboTransition [The network sync point type to use when NetworkSyncPoint ability task is used at various points of Combo Graph.

This config property is used on combo transitions (when a combo graph assets transition from one node to the next).

Default is None.]`
- `EComboGraphNetworkSyncTypeSetting SyncTypeOnEventReceived [The network sync point type to use when NetworkSyncPoint ability task is used at various points of Combo Graph.

This config property is used OnEventReceived (when a gameplay event is received by the owning actor a combo node
is listening to: Effect Containers, Cue Containers, etc.).

Default is None.]`
- `EComboGraphNetworkSyncTypeSetting SyncTypeOnGraphEnd [The network sync point type to use when NetworkSyncPoint ability task is used at various points of Combo Graph.

This config property is used OnGraphEnd (when a combo graph asset is done, just before triggering the OnGraphEnd
Blueprint delegate pin on the ability task).

Default is None.]`
- `bool bSequencesNetworkedWarning [Flag to enable / disable message warnings (logs and on screen) about Sequences being used in a networked environment]`

---

