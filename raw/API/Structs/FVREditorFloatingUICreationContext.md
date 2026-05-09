### FVREditorFloatingUICreationContext


Creation parameters for AVREditorFloatingUI

**属性**:

- `float32 EditorUISize [Optional override for "VREd.EditorUISize". Leave at 0 for default.]`
- `FName PanelID [ID that the UI system will use to identify the panel. MUST BE UNIQUE!]`
- `UStaticMesh PanelMesh [Optional custom mesh to use for the VR window.]`
- `FVector2D PanelSize [Panel size. Should match the size of the UMG passed in.]`
- `FTransform PanelSpawnOffset [Optional offset from HMD where the window opens. Pass FTransform::Identity for default logic - window will open at controller location.]`
- `AActor ParentActor`
- `TSubclassOf<UUserWidget> WidgetClass [Widget to open in the VR window. null to close an open window (if if matches the PanelID)]`
- `bool bHideWindowHandles [Turn off handles under window? (X-To-Close, movement bar...)]`
- `bool bMaskOutWidgetBackground [Turn off the widget's background to create a see-through look.]`
- `bool bNoCloseButton [If bHideWindowHandles is false, this window doesn't have a close button. (]`


**方法**:

- `FVREditorFloatingUICreationContext& opAssign(FVREditorFloatingUICreationContext Other)`

---

