### UStateTreeEditorSettings


**属性**:

- `EStateTreeSaveOnCompile SaveOnCompile [Determines when to save StateTrees post-compile]`
- `bool bEnableLegacyDebuggerWindow [If enabled, debugger window in the StateTree Asset Editor will display all widgets
related to the legacy debugger (recording controls, timelines, frame details, etc.).
Otherwise, it will display options to link to open RewindDebugger and select a given instance]`
- `bool bRetainNodePropertyValues [If enabled, changing the class of a node will try to copy over values of properties with the same name and type.
i.e. if you change one condition for another, and both have a "Target" BB key selector, it'll be kept.]`
- `bool bShouldDebuggerAutoRecordOnPIE [If enabled, debugger starts recording information at the start of each PIE session.]`
- `bool bShouldDebuggerResetDataOnNewPIESession [If enabled, debugger will clear previous tracks at the start of each PIE session.]`

---

