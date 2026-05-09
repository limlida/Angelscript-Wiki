### UAIESelectionSets


Link To Set of Anim Sequences that we may be linked to.

**属性**:

- `TMap<FGuid,FAIESelectionSetItem> SelectionSets []`


**方法**:

- `bool AddSelectionToSetItem(FGuid InGuid)`  
  Add selection to specified selection set
- `FGuid CreateMirror(FGuid InGuid)`  
  Create a mirrored selection set from an existing set. Will return empty FGuid if no set created
- `FGuid CreateSetItemFromSelection()`  
  Create a selection set from current selection. Will return empty FGuid if no set created
- `bool DeleteSetItem(FGuid InGuid)`  
  Delete selection set
- `bool ExportAsJsonFile(FFilePath JsonFilePath) const`  
  Export sets to a JSON file
- `bool ExportAsJsonString(FString& OutJsonString) const`  
  Export sets from a string
- `TArray<AActor> GetActiveActors() const`  
  Get the actors which are selectable
- `TArray<FGuid> GetActiveSelectionSets()`  
  Get the current set of active selection sets based upon active actors. This function will set it up also if needed
- `TArray<AActor> GetAllActors() const`  
  Get all the actors which are present to be selected by a selection set
- `bool GetItemColor(FGuid InGuid, FLinearColor& OutColor) const`  
  Get selection set color
- `GetItemGuids(FText ItemName, TArray<FGuid>& OutGuids) const`  
  Get the guids of set items associated with this name
- `bool GetItemName(FGuid InGuid, FText& OutName) const`  
  Get selection set name
- `bool GetItemRow(FGuid InGuid, int& OutRow) const`  
  Get selection set row
- `bool GetShowAndSetSelectedOnly() const`  
  Whether we are only showing and setting selections on current selections
- `bool IsMultiAsset(FGuid InGuid) const`  
  Rename selection set
- `bool IsolateControls(FGuid InGuid) const`  
  Isolate controls from just this selection set on active actors
- `bool KeyAll(FGuid InGuid) const`  
  Key the selection sets on active actors
- `bool LoadFromJsonFile(FFilePath JsonFilePath)`  
  Load sets from a JSON file
- `bool LoadFromJsonString(FString JsonString)`  
  Load sets from a string
- `bool RemoveSelectionFromSetItem(FGuid InGuid)`  
  Remove selection from specified selection set
- `bool RenameSetItem(FGuid InGuid, FText NewName)`  
  Rename selection set
- `bool SelectItem(FGuid InGuid, bool bDoMirror, bool bAdd, bool bToggle, bool bSelect = true) const`  
  Select from selection set, will select on the active actors
- `bool SetActorAsActive(AActor InActor, bool bSetActive)`  
  Set the AActor as Active or not, so it will or won't be selected from a selection set. Will return false if it doesn't match any sets*.
      Note if GetShowAndSetSelectedOnly() is true the selected state of the Actor will take precedence over this
- `bool SetItemColor(FGuid InGuid, FLinearColor InColor)`  
  Set selection set color
- `bool SetItemRow(FGuid InGuid, int InRow)`  
  Set selection set row
- `SetShowAndSetSelectedOnly(bool bInShowSelectedOnly)`  
  Set whether we are only showing and setting selections on current selections
- `bool ShowAllControls(FGuid InGuid) const`  
  Show all controls from this selection set's active actors
- `bool ShowOrHideControls(FGuid InGuid, bool bShow, bool bDoMirror) const`  
  Show or hide controls on the active actors from the specified set

---

