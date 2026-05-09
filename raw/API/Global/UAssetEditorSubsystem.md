### UAssetEditorSubsystem


UAssetEditorSubsystem

**方法**:

- `int CloseAllEditorsForAsset(UObject Asset)`  
  Close all active editors for the supplied asset and return the number of asset editors that were closed
- `bool OpenEditorForAssets(TArray<UObject> Assets, EAssetTypeActivationOpenedMethod OpenedMethod = EAssetTypeActivationOpenedMethod :: Edit)`  
  Tries to open an editor for all of the specified assets.
If any of the assets are already open, it will not create a new editor for them.
If all assets are of the same type, the supporting AssetTypeAction (if it exists) is responsible for the details of how to handle opening multiple assets at once.

---

