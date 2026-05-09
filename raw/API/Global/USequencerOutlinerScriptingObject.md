### USequencerOutlinerScriptingObject


**属性**:

- `FSequencerOutlinerSelectionChanged OnSelectionChanged`


**方法**:

- `TArray<FSequencerViewModelScriptingStruct> GetChildren(FSequencerViewModelScriptingStruct Node, FName TypeName = NAME_None) const`
- `TArray<FSequencerViewModelScriptingStruct> GetDeactivatedNodes()`  
  Deactivated
- `TArray<FSequencerViewModelScriptingStruct> GetLockedNodes()`  
  Locked
- `TArray<FSequencerViewModelScriptingStruct> GetMuteNodes()`  
  Mute
- `TArray<FSequencerViewModelScriptingStruct> GetPinnedNodes()`  
  Pinned
- `FSequencerViewModelScriptingStruct GetRootNode() const`
- `TArray<FSequencerViewModelScriptingStruct> GetSelection() const`
- `TArray<FSequencerViewModelScriptingStruct> GetSoloNodes()`  
  Solo
- `SetDeactivatedNodes(TArray<FSequencerViewModelScriptingStruct> InNodes, bool bInDeactivated)`
- `SetLockedNodes(TArray<FSequencerViewModelScriptingStruct> InNodes, bool bInLocked)`
- `SetMuteNodes(TArray<FSequencerViewModelScriptingStruct> InNodes, bool bInMuted)`
- `SetPinnedNodes(TArray<FSequencerViewModelScriptingStruct> InNodes, bool bInPinned)`
- `SetSelection(TArray<FSequencerViewModelScriptingStruct> InSelection)`
- `SetSoloNodes(TArray<FSequencerViewModelScriptingStruct> InNodes, bool bInSoloed)`

---

