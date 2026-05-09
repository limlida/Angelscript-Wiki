### UDEPRECATED_GlobalEditorUtilityBase


**属性**:

- `FString HelpText`
- `FForEachActorIteratorSignature OnEachSelectedActor [The method called for each selected actor when ForEachSelectedActor is called]`
- `FForEachAssetIteratorSignature OnEachSelectedAsset [The method called for each selected asset when ForEachSelectedAsset is called]`
- `bool bAutoRunDefaultAction [Should this blueprint automatically run OnDefaultActionClicked, or should it open up a details panel to edit properties and/or offer multiple buttons]`


**方法**:

- `ClearActorSelectionSet()`  
  Remove all actors from the selection set
- `ForEachSelectedActor()`  
  Calls OnEachSelectedActor for each selected actor
- `ForEachSelectedAsset()`  
  Calls OnEachSelectedAsset for each selected asset
- `AActor GetActorReference(FString PathToActor)`  
  Attempts to find the actor specified by PathToActor in the current editor world
@param       PathToActor     The path to the actor (e.g. PersistentLevel.PlayerStart)
@return      A reference to the actor, or none if it wasn't found
- `UEditorPerProjectUserSettings GetEditorUserSettings()`
- `TArray<UObject> GetSelectedAssets()`  
  Gets the set of currently selected assets
- `GetSelectionBounds(FVector& Origin, FVector& BoxExtent, float32& SphereRadius)`
- `TArray<AActor> GetSelectionSet()`
- `OnDefaultActionClicked()`  
  The default action called when the blutility is invoked if bAutoRunDefaultAction=true (it is never called otherwise)
- `RenameAsset(UObject Asset, FString NewName)`  
  Renames an asset (cannot move folders)
- `SelectNothing()`  
  Selects nothing in the editor (another way to clear the selection)
- `SetActorSelectionState(AActor Actor, bool bShouldBeSelected)`  
  Set the selection state for the selected actor

---

