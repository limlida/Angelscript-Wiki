### UDataLayerEditorSubsystem


**方法**:

- `bool AddActorsToDataLayer(TArray<AActor> Actors, UDataLayerInstance DataLayer)`  
  Add the actors to the DataLayer

@param       Actors          The actors to add to the DataLayer
@param       DataLayer       The DataLayer to add to
@return                              true if at least one actor was added to the DataLayer.  false is returned if all the actors already belonged to the DataLayer.
- `bool AddActorsToDataLayers(TArray<AActor> Actors, TArray<UDataLayerInstance> DataLayers)`  
  Add the actors to the DataLayers

@param       Actors          The actors to add to the DataLayers
@param       DataLayers      A valid list of DataLayers.
@return                              true if at least one actor was added to at least one DataLayer.  false is returned if all the actors already belonged to all specified DataLayers.
- `bool AddActorToDataLayer(AActor Actor, UDataLayerInstance DataLayer)`  
  Adds the actor to the DataLayer.

@param       Actor           The actor to add to the DataLayer
@param       DataLayer       The DataLayer to add the actor to
@return                              true if the actor was added.  false is returned if the actor already belongs to the DataLayer.
- `bool AddActorToDataLayers(AActor Actor, TArray<UDataLayerInstance> DataLayers)`  
  Adds the provided actor to the DataLayers.

@param       Actor           The actor to add to the provided DataLayers
@param       DataLayers      A valid list of DataLayers.
@return                              true if the actor was added to at least one of the provided DataLayers.
- `bool AddSelectedActorsToDataLayer(UDataLayerInstance DataLayer)`  
  Adds selected actors to the DataLayer.

@param       DataLayer       A DataLayer.
@return                              true if at least one actor was added.  false is returned if all selected actors already belong to the DataLayer.
- `bool AddSelectedActorsToDataLayers(TArray<UDataLayerInstance> DataLayers)`  
  Adds selected actors to the DataLayers.

@param       DataLayers      A valid list of DataLayers.
@return                              true if at least one actor was added.  false is returned if all selected actors already belong to the DataLayers.
- `AddToActorEditorContext(UDataLayerInstance InDataLayerInstance)`
- `AppendActorsFromDataLayer(UDataLayerInstance DataLayer, TArray<AActor>& InOutActors) const`  
  Appends all the actors associated with the specified DataLayer.

@param  DataLayer                       The DataLayer to find actors for.
@param  InOutActors                     The list to append the found actors to.
- `AppendActorsFromDataLayers(TArray<UDataLayerInstance> DataLayers, TArray<AActor>& InOutActors) const`  
  Appends all the actors associated with ANY of the specified DataLayers.

@param  DataLayers                      The DataLayers to find actors for.
@param  InOutActors                     The list to append the found actors to.
- `UDataLayerInstance CreateDataLayer(UDataLayerInstance ParentDataLayer = nullptr)`
- `UDataLayerInstance CreateDataLayerInstance(FDataLayerCreationParameters Parameters)`  
  Creates a UDataLayerInstance Object

@param       Parameters The Data Layer Instance creation parameters
@return      The newly created UDataLayerInstance Object
- `DeleteDataLayer(UDataLayerInstance DataLayerToDelete)`  
  Deletes the provided DataLayer

@param DataLayerToDelete             A valid DataLayer
- `DeleteDataLayers(TArray<UDataLayerInstance> DataLayersToDelete)`  
  Deletes all of the provided DataLayers

@param DataLayersToDelete    A valid list of DataLayer.
- `const UExternalDataLayerAsset GetActorEditorContextCurrentExternalDataLayer() const`
- `TArray<AActor> GetActorsFromDataLayer(UDataLayerInstance DataLayer) const`  
  Gets all the actors associated with the specified DataLayer. Analog to AppendActorsFromDataLayer but it returns rather than appends the actors.

@param  DataLayer                       The DataLayer to find actors for.
@return                                         The list to assign the found actors to.
- `TArray<AActor> GetActorsFromDataLayers(TArray<UDataLayerInstance> DataLayers) const`  
  Gets all the actors associated with ANY of the specified DataLayers. Analog to AppendActorsFromDataLayers but it returns rather than appends the actors.

@param  DataLayers                      The DataLayers to find actors for.
@return                                         The list to assign the found actors to.
- `TArray<UDataLayerInstance> GetAllDataLayers()`  
  Returns all Data Layers
- `UDataLayerInstance GetDataLayer(FActorDataLayer ActorDataLayer) const`
- `UDataLayerInstance GetDataLayerFromLabel(FName DataLayerLabel) const`
- `UDataLayerInstance GetDataLayerInstance(const UDataLayerAsset DataLayerAsset) const`  
  Gets the UDataLayerInstance associated to the DataLayerAsset

@param       DataLayerAsset  The DataLayerAsset associated to the UDataLayerInstance
@return                                      The UDataLayerInstance of the provided DataLayerAsset
- `TArray<UDataLayerInstance> GetDataLayerInstances(TArray<UDataLayerAsset> DataLayerAssets) const`  
  Gets the UDataLayerInstances associated to the each DataLayerAssets

@param       DataLayerAssets The array of DataLayerAssets associated to UDataLayerInstances
@return                                      The array of UDataLayerInstances corresponding to a DataLayerAsset in the DataLayerAssets array
- `bool IsActorValidForDataLayer(AActor Actor)`
- `bool IsActorValidForDataLayerInstances(AActor Actor, TArray<UDataLayerInstance> DataLayerInstances)`  
  Checks to see if the specified actor is in an appropriate state to interact with DataLayers

@param  Actor                           The actor to validate
@param  DataLayerInstances  The data layers used to do the validation
- `MakeAllDataLayersVisible()`  
  Set the visibility of all DataLayers to true
- `bool RemoveActorFromAllDataLayers(AActor Actor)`  
  Removes an actor from all DataLayers.

@param       Actor                   The actor to modify
@return                                      true if the actor was changed.
- `bool RemoveActorFromDataLayer(AActor Actor, UDataLayerInstance DataLayerToRemove)`  
  Removes an actor from the specified DataLayer.

@param       Actor                   The actor to remove from the provided DataLayer
@param       DataLayerToRemove       The DataLayer to remove the actor from
@return                                      true if the actor was removed from the DataLayer.  false is returned if the actor already belonged to the DataLayer.
- `bool RemoveActorFromDataLayers(AActor Actor, TArray<UDataLayerInstance> DataLayers)`  
  Removes the provided actor from the DataLayers.

@param       Actor           The actor to remove from the provided DataLayers
@param       DataLayers      A valid list of DataLayers.
@return                              true if the actor was removed from at least one of the provided DataLayers.
- `bool RemoveActorsFromAllDataLayers(TArray<AActor> Actors)`  
  Removes an actor from all DataLayers.

@param       Actor                   The actors to modify
@return                                      true if any actor was changed.
- `bool RemoveActorsFromDataLayer(TArray<AActor> Actors, UDataLayerInstance DataLayer)`  
  Removes the actors from the specified DataLayer.

@param       Actors                  The actors to remove from the provided DataLayer
@param       DataLayerToRemove       The DataLayer to remove the actors from
@return                                      true if at least one actor was removed from the DataLayer.  false is returned if all the actors already belonged to the DataLayer.
- `bool RemoveActorsFromDataLayers(TArray<AActor> Actors, TArray<UDataLayerInstance> DataLayers)`  
  Remove the actors from the DataLayers

@param       Actors          The actors to remove to the DataLayers
@param       DataLayers      A valid list of DataLayers.
@return                              true if at least one actor was removed from at least one DataLayer.  false is returned if none of the actors belonged to any of the specified DataLayers.
- `RemoveFromActorEditorContext(UDataLayerInstance InDataLayerInstance)`
- `bool RemoveSelectedActorsFromDataLayer(UDataLayerInstance DataLayer)`  
  Removes the selected actors from the DataLayer.

@param       DataLayer       A DataLayer.
@return                              true if at least one actor was added.  false is returned if all selected actors already belong to the DataLayer.
- `bool RemoveSelectedActorsFromDataLayers(TArray<UDataLayerInstance> DataLayers)`  
  Removes selected actors from the DataLayers.

@param       DataLayers      A valid list of DataLayers.
@return                              true if at least one actor was removed.
- `bool RenameDataLayer(UDataLayerInstance DataLayer, FName NewDataLayerLabel)`
- `bool SelectActorsInDataLayer(UDataLayerInstance DataLayer, bool bSelect, bool bNotify, bool bSelectEvenIfHidden = false)`  
  Selects/de-selects actors belonging to the DataLayer.

@param       DataLayer                                               A valid DataLayer.
@param       bSelect                                                 If true actors are selected; if false, actors are deselected.
@param       bNotify                                                 If true the Editor is notified of the selection change; if false, the Editor will not be notified.
@param       bSelectEvenIfHidden     [optional]      If true even hidden actors will be selected; if false, hidden actors won't be selected.
@return                                                                      true if at least one actor was selected/deselected.
- `bool SelectActorsInDataLayers(TArray<UDataLayerInstance> DataLayers, bool bSelect, bool bNotify, bool bSelectEvenIfHidden = false)`  
  Selects/de-selects actors belonging to the DataLayers.

@param       DataLayers                                              A valid list of DataLayers.
@param       bSelect                                                 If true actors are selected; if false, actors are deselected.
@param       bNotify                                                 If true the Editor is notified of the selection change; if false, the Editor will not be notified
@param       bSelectEvenIfHidden     [optional]      If true even hidden actors will be selected; if false, hidden actors won't be selected.
@return                                                                      true if at least one actor was selected/deselected.
- `bool SetActorEditorContextCurrentExternalDataLayer(const UExternalDataLayerAsset InExternalDataLayerAsset)`
- `SetDataLayerInitialRuntimeState(UDataLayerInstance DataLayer, EDataLayerRuntimeState InitialRuntimeState)`  
  Sets the initial runtime state of the DataLayers

@param       DataLayer                                               The DataLayer to affect
@param       InitialRuntimeState                             The initial runtime state.
- `SetDataLayerIsInitiallyVisible(UDataLayerInstance DataLayer, bool bIsInitiallyVisible)`  
  Sets the initial editor visibility state of the DataLayers

@param       DataLayer                                               The DataLayer to affect
@param       InitialRuntimeState                             The initial editor visibility state.
- `bool SetDataLayerIsLoadedInEditor(UDataLayerInstance DataLayer, bool bIsLoadedInEditor, bool bIsFromUserChange)`  
  Changes the DataLayer's IsLoadedInEditor flag to the provided state

@param       DataLayer                                               The DataLayer to affect.
@param       bIsLoadedInEditor                               The new value of the flag IsLoadedInEditor.
                                                                                     If True, the Editor loading will consider this DataLayer to load or not an Actor part of this DataLayer.
                                                                                     An Actor will not be loaded in the Editor if all its DataLayers are not LoadedInEditor.
@param       bIsFromUserChange                               If this change originates from a user change or not.
- `bool SetDataLayersIsLoadedInEditor(TArray<UDataLayerInstance> DataLayers, bool bIsLoadedInEditor, bool bIsFromUserChange)`  
  Changes the IsLoadedInEditor flag of the DataLayers to the provided state

@param       DataLayers                                              The DataLayers to affect
@param       bIsLoadedInEditor                               The new value of the flag IsLoadedInEditor.
                                                                                     If True, the Editor loading will consider this DataLayer to load or not an Actor part of this DataLayer.
                                                                                     An Actor will not be loaded in the Editor if all its DataLayers are not LoadedInEditor.
@param       bIsFromUserChange                               If this change originates from a user change or not.
- `SetDataLayersVisibility(TArray<UDataLayerInstance> DataLayers, bool bIsVisible)`  
  Changes visibility of the DataLayers to the provided state

@param       DataLayers      The DataLayers to affect
@param       bIsVisible      If true the DataLayers will be visible; if false, the DataLayers will not be visible
- `SetDataLayerVisibility(UDataLayerInstance DataLayer, bool bIsVisible)`  
  Changes the DataLayer's visibility to the provided state

@param       DataLayer       The DataLayer to affect.
@param       bIsVisible      If true the DataLayer will be visible; if false, the DataLayer will not be visible.
- `bool SetParentDataLayer(UDataLayerInstance DataLayer, UDataLayerInstance ParentDataLayer)`  
  Sets a Parent DataLayer for a specified DataLayer

 @param DataLayer            The child DataLayer.
 @param ParentDataLayer      The parent DataLayer.

 @return     true if succeeded, false if failed.
- `SetParentDataLayerForDataLayers(TArray<UDataLayerInstance> DataLayers, UDataLayerInstance ParentDataLayer)`  
  Sets a Parent DataLayer for a specified list of DataLayers

 @param DataLayers           The child DataLayers.
 @param ParentDataLayer      The parent DataLayer.
- `bool ToggleDataLayerIsLoadedInEditor(UDataLayerInstance DataLayer, bool bIsFromUserChange)`  
  Toggles the DataLayer's IsLoadedInEditor flag

@param       DataLayer                                               The DataLayer to affect
@param       bIsFromUserChange                               If this change originates from a user change or not.
- `bool ToggleDataLayersIsLoadedInEditor(TArray<UDataLayerInstance> DataLayers, bool bIsFromUserChange)`  
  Toggles the IsLoadedInEditor flag of all of the DataLayers

@param       DataLayers                                              The DataLayers to affect
@param       bIsFromUserChange                               If this change originates from a user change or not.
- `ToggleDataLayersVisibility(TArray<UDataLayerInstance> DataLayers)`  
  Toggles the visibility of all of the DataLayers

@param       DataLayers      The DataLayers to affect
- `ToggleDataLayerVisibility(UDataLayerInstance DataLayer)`  
  Toggles the DataLayer's visibility

@param DataLayer     The DataLayer to affect
- `bool UpdateActorVisibility(AActor Actor, bool& bOutSelectionChanged, bool& bOutActorModified, bool bNotifySelectionChange, bool bRedrawViewports)`  
  Updates the provided actors visibility in the viewports

@param       Actor                                           Actor to update
@param       bOutSelectionChanged [OUT]      Whether the Editors selection changed
@param       bOutActorModified [OUT]         Whether the actor was modified
@param       bNotifySelectionChange          If true the Editor is notified of the selection change; if false, the Editor will not be notified
@param       bRedrawViewports                        If true the viewports will be redrawn; if false, they will not
- `bool UpdateAllActorsVisibility(bool bNotifySelectionChange, bool bRedrawViewports)`  
  Updates the visibility of all actors in the viewports

@param       bNotifySelectionChange          If true the Editor is notified of the selection change; if false, the Editor will not be notified
@param       bRedrawViewports                        If true the viewports will be redrawn; if false, they will not

---

