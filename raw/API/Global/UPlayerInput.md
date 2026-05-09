### UPlayerInput


Object within PlayerController that processes player input.
Only exists on the client in network games.

@see https://docs.unrealengine.com/latest/INT/Gameplay/Input/index.html

**属性**:

- `TArray<FKeyBind> DebugExecBindings [Generic bindings of keys to Exec()-compatible strings for development purposes only]`
- `TArray<FName> InvertedAxis [List of Axis Mappings that have been inverted]`


**方法**:

- `APlayerController GetOuterAPlayerController() const`  
  Return's this object casted to a player controller. This can be null if there is no player controller.
- `AddActionMapping(FInputActionKeyMapping KeyMapping)`
- `AddAxisMapping(FInputAxisKeyMapping KeyMapping)`
- `ForceRebuildingKeyMaps(bool bRestoreDefaults = false)`
- `TArray<FInputActionKeyMapping> GetEngineDefinedActionMappings(FName ActionName)`
- `TArray<FInputAxisKeyMapping> GetEngineDefinedAxisMappings(FName AxisName)`
- `TArray<FInputActionKeyMapping> GetKeysForAction(FName ActionName)`
- `TArray<FInputAxisKeyMapping> GetKeysForAxis(FName AxisName)`
- `float32 GetMouseSensitivityX()`
- `float32 GetMouseSensitivityY()`
- `InvertAxis(FName AxisName)`
- `RemoveActionMapping(FInputActionKeyMapping KeyMapping)`
- `RemoveAxisMapping(FInputAxisKeyMapping KeyMapping)`
- `SetMouseSensitivity(float32 Sensitivity)`

---

