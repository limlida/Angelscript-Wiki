### USequencerCurveEditorObject


* Class to hold sequencer curve editor functions

**方法**:

- `ApplyFilter(UCurveEditorFilterBase Filter)`
- `CloseCurveEditor()`  
  Close curve editor
- `DeleteColorForChannels(UClass Class, FString& Identifier)`  
  Delete for specified channel idendified by it's class and identifier.
- `EmptySelection()`  
  Empties the current selection.
- `TArray<FSequencerChannelProxy> GetChannelsWithSelectedKeys()`  
  Gets the channel with selected keys
- `FLinearColor GetCustomColorForChannel(UClass Class, FString Identifier)`  
  Get custom color for specified channel idendified by it's class and identifier,if none exists will return white
- `TArray<int> GetSelectedKeys(FSequencerChannelProxy ChannelProxy)`  
  Gets the selected keys with this channel
- `bool HasCustomColorForChannel(UClass Class, FString Identifier)`  
  Get if a custom color for specified channel idendified by it's class and identifier exists
- `bool IsCurveEditorOpen()`  
  Is curve editor open
- `bool IsCurveShown(FSequencerChannelProxy Channel)`  
  Is the curve displayed
- `OpenCurveEditor()`  
  Open curve editor
- `SelectKeys(FSequencerChannelProxy Channel, TArray<int> Indices)`  
  Select keys
- `SetCustomColorForChannel(UClass Class, FString Identifier, FLinearColor NewColor)`  
  Set Custom Color for specified channel idendified by it's class and identifier. This will be stored in editor user preferences.
- `SetCustomColorForChannels(UClass Class, TArray<FString> Identifiers, TArray<FLinearColor> NewColors)`  
  Set Custom Color for specified channels idendified by it's class and identifiers. This will be stored in editor user preferences.
- `SetRandomColorForChannels(UClass Class, TArray<FString> Identifiers)`  
  Set Random Colors for specified channels idendified by it's class and identifiers. This will be stored in editor user preferences.
- `ShowCurve(FSequencerChannelProxy Channel, bool bShowCurve)`  
  Show curve

---

