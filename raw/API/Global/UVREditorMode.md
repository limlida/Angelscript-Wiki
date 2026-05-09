### UVREditorMode


VR Editor Mode. Extends editor viewports with functionality for VR controls and object manipulation

**属性**:

- `TSoftClassPtr<UVREditorInteractor> InteractorClass [The controller to use when UnrealEd is in VR mode. Use VREditorInteractor get default editor behavior, or select a custom controller for special behavior]`
- `TSoftClassPtr<AVREditorTeleporter> TeleporterClass [The teleporter to use when UnrealEd is in VR mode. Use VREditorTeleporter to get default editor behavior, or select a custom teleporter]`


**方法**:

- `float32 GetWorldScaleFactor() const`  
  Gets the world scale factor, which can be multiplied by a scale vector to convert to room space
- `bool IsInGameView() const`  
  Returns whether game view is currently active.
- `SetGameView(bool bGameView)`  
  Display the scene more closely to how it would appear at runtime (as opposed to edit time).

---

