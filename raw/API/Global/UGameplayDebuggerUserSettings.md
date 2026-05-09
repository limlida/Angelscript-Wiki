### UGameplayDebuggerUserSettings


**属性**:

- `TSet<FName> EnabledCategories [Persist which categories are enabled across editor sessions. Saved to disk as names since index is unstable.]`
- `int FontSize [Font Size used by Gameplay Debugger]`
- `float32 MaxViewAngle [Angle from view direction under which actors can be selected
This angle can also be used by some categories to apply culling.]`
- `float32 MaxViewDistance [Distance from view location under which actors can be selected
This distance can also be used by some categories to apply culling.]`
- `bool bEnableGameplayDebuggerInEditor [Controls whether GameplayDebugger will be available in pure editor mode.
@Note that you need to reload the map for the changes to this property to take effect]`

---

