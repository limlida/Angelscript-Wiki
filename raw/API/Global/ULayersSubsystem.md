### ULayersSubsystem


**方法**:

- `bool AddActorsToLayer(TArray<AActor> Actors, FName LayerName)`  
  Add the actors to the named layer

@param       Actors          The actors to add to the named layer
@param       LayerName       The name of the layer to add to
@return                              true if at least one actor was added to the layer.  false is returned if all the actors already belonged to the layer.
- `bool AddActorsToLayers(TArray<AActor> Actors, TArray<FName> LayerNames)`  
  Add the actors to the named layers

@param       Actors          The actors to add to the named layers
@param       LayerNames      A valid list of layer names.
@return                              true if at least one actor was added to at least one layer.  false is returned if all the actors already belonged to all specified layers.
- `bool AddActorToLayer(AActor Actor, FName LayerName)`  
  Adds the actor to the named layer.

@param       Actor           The actor to add to the named layer
@param       LayerName       The name of the layer to add the actor to
@return                              true if the actor was added.  false is returned if the actor already belongs to the layer.
- `bool AddActorToLayers(AActor Actor, TArray<FName> LayerNames)`  
  Adds the provided actor to the named layers.

@param       Actor           The actor to add to the provided layers
@param       LayerNames      A valid list of layer names.
@return                              true if the actor was added to at least one of the provided layers.
- `AddAllLayerNamesTo(TArray<FName>& OutLayerNames) const`  
  Gets all known layers and appends their names to the provide array

@param OutLayers[OUT] Output array to store all known layers
- `AddAllLayersTo(TArray<ULayer>& OutLayers) const`  
  Gets all known layers and appends them to the provided array

@param OutLayers[OUT] Output array to store all known layers
- `AddLevelLayerInformation(ULevel Level)`  
  Aggregates any information regarding layers associated with the level and it contents

@param  Level   The process
- `bool AddSelectedActorsToLayer(FName LayerName)`  
  Adds selected actors to the named layer.

@param       LayerName       A layer name.
@return                              true if at least one actor was added.  false is returned if all selected actors already belong to the named layer.
- `bool AddSelectedActorsToLayers(TArray<FName> LayerNames)`  
  Adds selected actors to the named layers.

@param       LayerNames      A valid list of layer names.
@return                              true if at least one actor was added.  false is returned if all selected actors already belong to the named layers.
- `AppendActorsFromLayer(FName LayerName, TArray<AActor>& InOutActors) const`  
  Appends all the actors associated with the specified layer.

@param  LayerName                       The layer to find actors for.
@param  InOutActors                     The list to append the found actors to.
- `AppendActorsFromLayers(TArray<FName> LayerNames, TArray<AActor>& InOutActors) const`  
  Appends all the actors associated with ANY of the specified layers.

@param  LayerNames                      The layers to find actors for.
@param  InOutActors                     The list to append the found actors to.
- `ULayer CreateLayer(FName LayerName)`  
  Creates a ULayer Object for the named layer

@param       LayerName       The name of the layer to create
@return                              The newly created ULayer Object for the named layer
- `DeleteLayer(FName LayerToDelete)`  
  Deletes the provided layer, disassociating all actors from them

@param LayerToDelete         A valid layer name
- `DeleteLayers(TArray<FName> LayersToDelete)`  
  Deletes all of the provided layers, disassociating all actors from them

@param LayersToDelete        A valid list of layer names.
- `bool DisassociateActorFromLayers(AActor Actor)`  
  Disassociates an Actor's layers from the layer system, general used before deleting the Actor

@param  Actor   The actor to disassociate from the layer system
- `bool DisassociateActorsFromLayers(TArray<AActor> Actors)`  
  Disassociates actors from the layer system, generally used before deleting the Actors

@param  Actors  The actors to disassociate from the layer system
- `EditorMapChange()`  
  Delegate handler for FEditorDelegates::MapChange. It internally calls LayersChanged.Broadcast.
- `EditorRefreshLayerBrowser()`  
  Delegate handler for FEditorDelegates::RefreshLayerBrowser. It internally calls UpdateAllActorsVisibility to refresh the actors of each layer.
- `TArray<AActor> GetActorsFromLayer(FName LayerName) const`  
  Gets all the actors associated with the specified layer. Analog to AppendActorsFromLayer but it returns rather than appends the actors.

@param  LayerName                       The layer to find actors for.
@return                                         The list to assign the found actors to.
- `TArray<AActor> GetActorsFromLayers(TArray<FName> LayerNames) const`  
  Gets all the actors associated with ANY of the specified layers. Analog to AppendActorsFromLayers but it returns rather than appends the actors.

@param  LayerNames                      The layers to find actors for.
@return                                         The list to assign the found actors to.
- `ULayer GetLayer(FName LayerName) const`  
  Gets the ULayer Object of the named layer

@param       LayerName       The name of the layer whose ULayer Object is returned
@return                              The ULayer Object of the provided layer name
- `TArray<AActor> GetSelectedActors() const`  
  Find and return the selected actors.

@return                              The selected AActor's as a TArray.
- `UWorld GetWorld() const`  
  Get the current UWorld object.

@return                                              The UWorld* object
- `bool InitializeNewActorLayers(AActor Actor)`  
  Synchronizes an newly created Actor's layers with the layer system

@param  Actor   The actor to initialize
- `bool IsActorValidForLayer(AActor Actor)`  
  Checks to see if the specified actor is in an appropriate state to interact with layers

@param  Actor   The actor to validate
- `bool IsLayer(FName LayerName)`  
  Checks whether the ULayer Object of the provided layer name exists.

@param       LayerName               The name of the layer whose ULayer Object to retrieve
@return                                      If true a valid ULayer Object was found; if false, a valid ULayer object was not found
- `MakeAllLayersVisible()`  
  Set the visibility of all layers to true
- `bool RemoveActorFromLayer(AActor Actor, FName LayerToRemove, bool bUpdateStats = true)`  
  Removes an actor from the specified layer.

@param       Actor                   The actor to remove from the provided layer
@param       LayerToRemove   The name of the layer to remove the actor from
@return                                      true if the actor was removed from the layer.  false is returned if the actor already belonged to the layer.
- `bool RemoveActorFromLayers(AActor Actor, TArray<FName> LayerNames, bool bUpdateStats = true)`  
  Removes the provided actor from the named layers.

@param       Actor           The actor to remove from the provided layers
@param       LayerNames      A valid list of layer names.
@return                              true if the actor was removed from at least one of the provided layers.
- `bool RemoveActorsFromLayer(TArray<AActor> Actors, FName LayerName, bool bUpdateStats = true)`  
  Removes the actors from the specified layer.

@param       Actors                  The actors to remove from the provided layer
@param       LayerToRemove   The name of the layer to remove the actors from
@return                                      true if at least one actor was removed from the layer.  false is returned if all the actors already belonged to the layer.
- `bool RemoveActorsFromLayers(TArray<AActor> Actors, TArray<FName> LayerNames, bool bUpdateStats = true)`  
  Remove the actors to the named layers

@param       Actors          The actors to remove to the named layers
@param       LayerNames      A valid list of layer names.
@return                              true if at least one actor was removed from at least one layer.  false is returned if none of the actors belonged to any of the specified layers.
- `RemoveLevelLayerInformation(ULevel Level)`  
  Purges any information regarding layers associated with the level and it contents

@param  Level   The process
- `bool RemoveSelectedActorsFromLayer(FName LayerName)`  
  Removes the selected actors from the named layer.

@param       LayerName       A layer name.
@return                              true if at least one actor was added.  false is returned if all selected actors already belong to the named layer.
- `bool RemoveSelectedActorsFromLayers(TArray<FName> LayerNames)`  
  Removes selected actors from the named layers.

@param       LayerNames      A valid list of layer names.
@return                              true if at least one actor was removed.
- `bool RenameLayer(FName OriginalLayerName, FName NewLayerName)`  
  Renames the provided originally named layer to the provided new name

@param       OriginalLayerName       The name of the layer to be renamed
@param       NewLayerName            The new name for the layer to be renamed
- `bool SelectActorsInLayer(FName LayerName, bool bSelect, bool bNotify, bool bSelectEvenIfHidden = false)`  
  Selects/de-selects actors belonging to the named layer.

@param       LayerName                                               A valid layer name.
@param       bSelect                                                 If true actors are selected; if false, actors are deselected.
@param       bNotify                                                 If true the Editor is notified of the selection change; if false, the Editor will not be notified.
@param       bSelectEvenIfHidden     [optional]      If true even hidden actors will be selected; if false, hidden actors won't be selected.
@return                                                                      true if at least one actor was selected/deselected.
- `bool SelectActorsInLayers(TArray<FName> LayerNames, bool bSelect, bool bNotify, bool bSelectEvenIfHidden = false)`  
  Selects/de-selects actors belonging to the named layers.

@param       LayerNames                                              A valid list of layer names.
@param       bSelect                                                 If true actors are selected; if false, actors are deselected.
@param       bNotify                                                 If true the Editor is notified of the selection change; if false, the Editor will not be notified
@param       bSelectEvenIfHidden     [optional]      If true even hidden actors will be selected; if false, hidden actors won't be selected.
@return                                                                      true if at least one actor was selected/deselected.
- `SetLayersVisibility(TArray<FName> LayerNames, bool bIsVisible)`  
  Changes visibility of the named layers to the provided state

@param       LayerNames      The names of the layers to affect
@param       bIsVisible      If true the layers will be visible; if false, the layers will not be visible
- `SetLayerVisibility(FName LayerName, bool bIsVisible)`  
  Changes the named layer's visibility to the provided state

@param       LayerName       The name of the layer to affect.
@param       bIsVisible      If true the layer will be visible; if false, the layer will not be visible.
- `ToggleLayersVisibility(TArray<FName> LayerNames)`  
  Toggles the visibility of all of the named layers

@param       LayerNames      The names of the layers to affect
- `ToggleLayerVisibility(FName LayerName)`  
  Toggles the named layer's visibility

@param LayerName     The name of the layer to affect
- `bool TryGetLayer(FName LayerName, ULayer& OutLayer)`  
  Attempts to get the ULayer Object of the provided layer name.

@param       LayerName               The name of the layer whose ULayer Object to retrieve
@param       OutLayer[OUT]   Set to the ULayer Object of the named layer. Set to Invalid if no ULayer Object exists.
@return                                      If true a valid ULayer Object was found and set to OutLayer; if false, a valid ULayer object was not found and invalid set to OutLayer
- `UpdateActorAllViewsVisibility(AActor Actor)`  
  Updates per-view visibility for the given actor for all views

@param Actor         Actor to update
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
- `UpdateAllViewVisibility(FName LayerThatChanged)`  
  Updates the visibility for all actors for all views.

@param LayerThatChanged  If one layer was changed (toggled in view pop-up, etc), then we only need to modify actors that use that layer.

---

