### UCommonUIInputSettings


Project-wide input settings for UI input actions

**属性**:

- `FCommonAnalogCursorSettings AnalogCursorSettings []`
- `TArray<FUIInputAction> InputActions [All UI input action mappings for the project]`
- `int UIActionProcessingPriority [The input priority of the input components that process UI input actions.
The lower the value, the higher the priority of the component.

By default, this value is incredibly high to ensure UI action processing priority over game elements.
Adjust as needed for the UI input components to be processed at the appropriate point in the input stack in your project.

NOTE: When the active input mode is ECommonInputMode::Menu, ALL input components with lower priority than this will be fully blocked.
              Thus, if any game agent input components are registered with higher priority than this, behavior will not match expectation.]`
- `bool bLinkCursorToGamepadFocus [True to have the mouse pointer automatically moved to the center of whatever widget is currently focused while using a gamepad.]`

---

