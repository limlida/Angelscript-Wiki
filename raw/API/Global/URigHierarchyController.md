### URigHierarchyController


**方法**:

- `FRigElementKey AddAnimationChannel(FName InName, FRigElementKey InParentControl, FRigControlSettings InSettings, bool bSetupUndo = true, bool bPrintPythonCommand = false)`  
  Adds a control to the hierarchy
@param InName The suggested name of the new animation channel - will eventually be corrected by the namespace
@param InParentControl The parent of the new animation channel.
@param InSettings All of the animation channel's settings
@param bSetupUndo If set to true the stack will record the change for undo / redo
@return The key for the newly created animation channel.
- `bool AddAvailableSpace(FRigElementKey InControl, FRigElementKey InSpace, FName InDisplayLabel = NAME_None, bool bSetupUndo = false, bool bPrintPythonCommand = false)`  
  Adds a new available space to the given control
@param InControl The control to add the available space for
@param InSpace The space to add to the available spaces list
@param InDisplayLabel The optional display label to use for this space
@param bSetupUndo If set to true the stack will record the change for undo / redo
@param bPrintPythonCommand If set to true a python command equivalent to this call will be printed out
@return Returns true if successful.
- `FRigElementKey AddBone(FName InName, FRigElementKey InParent, FTransform InTransform, bool bTransformInGlobal = true, ERigBoneType InBoneType = ERigBoneType :: User, bool bSetupUndo = false, bool bPrintPythonCommand = false)`  
  Adds a bone to the hierarchy
@param InName The suggested name of the new bone - will eventually be corrected by the namespace
@param InParent The (optional) parent of the new bone. If you don't need a parent, pass FRigElementKey()
@param InTransform The transform for the new bone - either in local or global space, based on bTransformInGlobal
@param bTransformInGlobal Set this to true if the Transform passed is expressed in global space, false for local space.
@param InBoneType The type of bone to add. This can be used to differentiate between imported bones and user defined bones.
@param bSetupUndo If set to true the stack will record the change for undo / redo
@param bPrintPythonCommand If set to true a python command equivalent to this call will be printed out
@return The key for the newly created bone.
- `bool AddChannelHost(FRigElementKey InChannel, FRigElementKey InHost, bool bSetupUndo = false, bool bPrintPythonCommand = false)`  
  Adds a new channel host to the animation channel
@note This is just an overload of AddAvailableSpace for readability
@param InChannel The animation channel to add the channel host for
@param InHost The host to add to the channel to
@param bSetupUndo If set to true the stack will record the change for undo / redo
@param bPrintPythonCommand If set to true a python command equivalent to this call will be printed out
@return Returns true if successful.
- `FRigComponentKey AddComponent(UScriptStruct InComponentStruct, FName InName, FRigElementKey InElement, FString InContent = "", bool bSetupUndo = false, bool bPrintPythonCommand = false)`  
  Adds a component to the hierarchy
@param InComponentStruct The script struct of the component to add
@param InName The suggested name of the new component.
@param InElement The element the component will be added to.
@param InContent The (optional) serialized text default for the component
@param bSetupUndo If set to true the stack will record the change for undo / redo
@param bPrintPythonCommand If set to true a python command equivalent to this call will be printed out
@return The name of the newly created component
- `FRigElementKey AddConnector(FName InName, FRigConnectorSettings InSettings, bool bSetupUndo = false, bool bPrintPythonCommand = false)`  
  Adds a connector to the hierarchy
@param InName The suggested name of the new connector - will eventually be corrected by the namespace
@param InSettings All of the connector's settings
@param bSetupUndo If set to true the stack will record the change for undo / redo
@param bPrintPythonCommand If set to true a python command equivalent to this call will be printed out
@return The key for the newly created bone.
- `FRigElementKey AddControl(FName InName, FRigElementKey InParent, FRigControlSettings InSettings, FRigControlValue InValue, bool bSetupUndo = true, bool bPrintPythonCommand = false)`  
  Adds a control to the hierarchy
@param InName The suggested name of the new control - will eventually be corrected by the namespace
@param InParent The (optional) parent of the new control. If you don't need a parent, pass FRigElementKey()
@param InSettings All of the control's settings
@param InValue The value to use for the control
@param bSetupUndo If set to true the stack will record the change for undo / redo
@return The key for the newly created control.
- `FRigElementKey AddCurve(FName InName, float32 InValue = 0.000000, bool bSetupUndo = true, bool bPrintPythonCommand = false)`  
  Adds a curve to the hierarchy
@param InName The suggested name of the new curve - will eventually be corrected by the namespace
@param InValue The value to use for the curve
@param bSetupUndo If set to true the stack will record the change for undo / redo
@param bPrintPythonCommand If set to true a python command equivalent to this call will be printed out
@return The key for the newly created curve.
- `FRigElementKey AddNull(FName InName, FRigElementKey InParent, FTransform InTransform, bool bTransformInGlobal = true, bool bSetupUndo = false, bool bPrintPythonCommand = false)`  
  Adds a null to the hierarchy
@param InName The suggested name of the new null - will eventually be corrected by the namespace
@param InParent The (optional) parent of the new null. If you don't need a parent, pass FRigElementKey()
@param InTransform The transform for the new null - either in local or global null, based on bTransformInGlobal
@param bTransformInGlobal Set this to true if the Transform passed is expressed in global null, false for local null.
@param bSetupUndo If set to true the stack will record the change for undo / redo
@param bPrintPythonCommand If set to true a python command equivalent to this call will be printed out
@return The key for the newly created null.
- `bool AddParent(FRigElementKey InChild, FRigElementKey InParent, float32 InWeight = 0.000000, bool bMaintainGlobalTransform = true, FName InDisplayLabel = NAME_None, bool bSetupUndo = false)`  
  Adds a new parent to an element. For elements that allow only one parent the parent will be replaced (Same as ::SetParent).
@param InChild The key of the element to add the parent for
@param InParent The key of the new parent to add
@param InWeight The initial weight to give to the parent
@param bMaintainGlobalTransform If set to true the child will stay in the same place spatially, otherwise it will maintain it's local transform (and potential move).
@param InDisplayLabel The optional display label to use for the parent constraint / space.
@param bSetupUndo If set to true the stack will record the change for undo / redo
@return Returns true if successful.
- `FRigElementKey AddSocket(FName InName, FRigElementKey InParent, FTransform InTransform, bool bTransformInGlobal = true, FLinearColor InColor = FLinearColor ( 1.000000 , 1.000000 , 1.000000 , 1.000000 ), FString InDescription = "", bool bSetupUndo = false, bool bPrintPythonCommand = false)`  
  Adds a socket to the hierarchy
@param InName The suggested name of the new socket - will eventually be corrected by the namespace
@param InParent The (optional) parent of the new null. If you don't need a parent, pass FRigElementKey()
@param InTransform The transform for the new socket - either in local or global space, based on bTransformInGlobal
@param bTransformInGlobal Set this to true if the Transform passed is expressed in global space, false for local space.
@param InColor The color of the socket
@param InDescription The description of the socket
@param bSetupUndo If set to true the stack will record the change for undo / redo
@param bPrintPythonCommand If set to true a python command equivalent to this call will be printed out
@return The key for the newly created bone.
- `bool ClearSelection(bool bSetupUndo = false)`  
  Clears the selection
@param bSetupUndo If set to true the stack will record the change for undo / redo
@return Returns true if the selection was applied
- `bool DeselectComponent(FRigComponentKey InKey)`  
  Deselects or deselects a component in the hierarchy
@param InKey The key of the component to deselect
@return Returns true if the selection was applied
- `bool DeselectElement(FRigElementKey InKey)`  
  Deselects or deselects an element in the hierarchy
@param InKey The key of the element to deselect
@return Returns true if the selection was applied
- `bool DeselectHierarchyKey(FRigHierarchyKey InKey, bool bSetupUndo = false)`  
  Deselects or deselects a component or an element in the hierarchy
@param InKey The key of the component or element to deselect
@param bSetupUndo If set to true the stack will record the change for undo / redo
@return Returns true if the selection was applied
- `TArray<FRigElementKey> DuplicateElements(TArray<FRigElementKey> InKeys, bool bSelectNewElements = true, bool bSetupUndo = false, bool bPrintPythonCommands = false)`  
  Duplicate the given elements
@param InKeys The keys of the elements to duplicate
@param bSelectNewElements If set to true the new elements will be selected
@param bSetupUndo If set to true the stack will record the change for undo / redo
@param bPrintPythonCommands If set to true a python command equivalent to this call will be printed out
@return The keys of the 4d items
- `FString ExportSelectionToText() const`  
  Exports the selected items to text
@return The text representation of the selected items
- `FString ExportToText(TArray<FRigElementKey> InKeys) const`  
  Exports a list of items to text
@param InKeys The keys to export to text
@return The text representation of the requested elements
- `TArray<FString> GeneratePythonCommands()`
- `FRigControlSettings GetControlSettings(FRigElementKey InKey) const`  
  Returns the control settings of a given control
@param InKey The key of the control to receive the settings for
@return The settings of the given control
- `URigHierarchy GetHierarchy() const`  
  Returns the hierarchy currently linked to this controller
- `TArray<FRigElementKey> ImportBones(USkeleton InSkeleton, FName InNameSpace = NAME_None, bool bReplaceExistingBones = true, bool bRemoveObsoleteBones = true, bool bSelectBones = false, bool bSetupUndo = false, bool bPrintPythonCommand = false)`  
  Imports an existing skeleton to the hierarchy
@param InSkeleton The skeleton to import
@param InNameSpace The namespace to prefix the bone names with
@param bReplaceExistingBones If true existing bones will be removed
@param bRemoveObsoleteBones If true bones non-existent in the skeleton will be removed from the hierarchy
@param bSelectBones If true the bones will be selected upon import
@param bSetupUndo If set to true the stack will record the change for undo / redo
@param bPrintPythonCommand If set to true a python command equivalent to this call will be printed out
@return The keys of the imported elements
- `TArray<FRigElementKey> ImportBonesFromAsset(FString InAssetPath, FName InNameSpace = NAME_None, bool bReplaceExistingBones = true, bool bRemoveObsoleteBones = true, bool bSelectBones = false, bool bSetupUndo = false)`  
  Imports an existing skeleton to the hierarchy
@param InAssetPath The path to the uasset to import from
@param InNameSpace The namespace to prefix the bone names with
@param bReplaceExistingBones If true existing bones will be removed
@param bRemoveObsoleteBones If true bones non-existent in the skeleton will be removed from the hierarchy
@param bSelectBones If true the bones will be selected upon import
@param bSetupUndo If set to true the stack will record the change for undo / redo
@return The keys of the imported elements
- `TArray<FRigElementKey> ImportBonesFromSkeletalMesh(USkeletalMesh InSkeletalMesh, FName InNameSpace, bool bReplaceExistingBones = true, bool bRemoveObsoleteBones = true, bool bSelectBones = false, bool bSetupUndo = false, bool bPrintPythonCommand = false)`  
  Imports an existing skeleton to the hierarchy, restricting the bone list to the ones that exist in the provided Skeletal Mesh
@param InSkeletalMesh The skeletal mesh asset to import
@param InNameSpace The namespace to prefix the bone names with
@param bReplaceExistingBones If true existing bones will be removed
@param bRemoveObsoleteBones If true bones non-existent in the skeleton will be removed from the hierarchy
@param bSelectBones If true the bones will be selected upon import
@param bSetupUndo If set to true the stack will record the change for undo / redo
@return The keys of the imported elements
- `TArray<FRigElementKey> ImportCurves(USkeleton InSkeleton, FName InNameSpace = NAME_None, bool bSelectCurves = false, bool bSetupUndo = false, bool bPrintPythonCommand = false)`  
  Imports all curves from a skeleton to the hierarchy
@param InSkeleton The skeleton to import the curves from
@param InNameSpace The namespace to prefix the bone names with
@param bSelectCurves If true the curves will be selected upon import
@param bSetupUndo If set to true the stack will record the change for undo / redo
@return The keys of the imported elements
- `TArray<FRigElementKey> ImportCurvesFromAsset(FString InAssetPath, FName InNameSpace = NAME_None, bool bSelectCurves = false, bool bSetupUndo = false)`  
  Imports all curves from a skeleton to the hierarchy
@param InAssetPath The path to the uasset to import from
@param InNameSpace The namespace to prefix the bone names with
@param bSelectCurves If true the curves will be selected upon import
@param bSetupUndo If set to true the stack will record the change for undo / redo
@return The keys of the imported elements
- `TArray<FRigElementKey> ImportCurvesFromSkeletalMesh(USkeletalMesh InSkeletalMesh, FName InNameSpace = NAME_None, bool bSelectCurves = false, bool bSetupUndo = false, bool bPrintPythonCommand = false)`  
  Imports all curves from a skeletalmesh to the hierarchy
@param InSkeletalMesh The skeletalmesh to import the curves from
@param InNameSpace The namespace to prefix the bone names with
@param bSelectCurves If true the curves will be selected upon import
@param bSetupUndo If set to true the stack will record the change for undo / redo
@return The keys of the imported elements
- `TArray<FRigElementKey> ImportFromText(FString InContent, bool bReplaceExistingElements = false, bool bSelectNewElements = true, bool bSetupUndo = false, bool bPrintPythonCommands = false)`  
  Imports the content of a text buffer to the hierarchy
@param InContent The string buffer representing the content to import
@param bReplaceExistingElements If set to true existing items will be replaced / updated with the content in the buffer
@param bSelectNewElements If set to true the new elements will be selected
@param bSetupUndo If set to true the stack will record the change for undo / redo
@param bPrintPythonCommands If set to true a python command equivalent to this call will be printed out
- `TArray<FRigElementKey> ImportPreviewSkeletalMesh(USkeletalMesh InSkeletalMesh, bool bReplaceExistingBones = true, bool bRemoveObsoleteBones = true, bool bSelectBones = false, bool bSetupUndo = false)`  
  Imports all bones from a preview skeletal mesh. Used for rig modules and their preview skeleton
@param bReplaceExistingBones If true existing bones will be removed
@param bRemoveObsoleteBones If true bones non-existent in the skeleton will be removed from the hierarchy
@param bSelectBones If true the bones will be selected upon import
@param bSetupUndo If set to true the stack will record the change for undo / redo
@return The keys of the imported elements
- `TArray<FRigElementKey> ImportSocketsFromSkeletalMesh(USkeletalMesh InSkeletalMesh, FName InNameSpace, bool bReplaceExistingSockets = true, bool bRemoveObsoleteSockets = true, bool bSelectSockets = false, bool bSetupUndo = false, bool bPrintPythonCommand = false)`  
  Imports the sockets from existing skeleton to the hierarchy as nulls
@param InSkeletalMesh The skeletal mesh asset to import
@param InNameSpace The namespace to prefix the socket names with
@param bReplaceExistingSockets If true existing sockets will be removed
@param bRemoveObsoleteSockets If true sockets non-existent in the skeleton will be removed from the hierarchy
@param bSelectSockets If true the sockets will be selected upon import
@param bSetupUndo If set to true the stack will record the change for undo / redo
@return The keys of the imported elements
- `TArray<FRigElementKey> MirrorElements(TArray<FRigElementKey> InKeys, FRigVMMirrorSettings InSettings, bool bSelectNewElements = true, bool bSetupUndo = false, bool bPrintPythonCommands = false)`  
  Mirrors the given elements
@param InKeys The keys of the elements to mirror
@param InSettings The settings to use for the mirror operation
@param bSelectNewElements If set to true the new elements will be selected
@param bSetupUndo If set to true the stack will record the change for undo / redo
@param bPrintPythonCommands If set to true a python command equivalent to this call will be printed out
@return The keys of the mirrored items
- `bool RemoveAllParents(FRigElementKey InChild, bool bMaintainGlobalTransform = true, bool bSetupUndo = false, bool bPrintPythonCommand = false)`  
  Removes all parents from an element in the hierarchy.
@param InChild The key of the element to remove all parents for
@param bMaintainGlobalTransform If set to true the child will stay in the same place spatially, otherwise it will maintain it's local transform (and potential move).
@param bSetupUndo If set to true the stack will record the change for undo / redo
@param bPrintPythonCommand If set to true a python command equivalent to this call will be printed out
@return Returns true if successful.
- `bool RemoveAvailableSpace(FRigElementKey InControl, FRigElementKey InSpace, bool bSetupUndo = false, bool bPrintPythonCommand = false)`  
  Removes an available space from the given control
@param InControl The control to remove the available space from
@param InSpace The space to remove from the available spaces list
@param bSetupUndo If set to true the stack will record the change for undo / redo
@param bPrintPythonCommand If set to true a python command equivalent to this call will be printed out
@return Returns true if successful.
- `bool RemoveChannelHost(FRigElementKey InChannel, FRigElementKey InHost, bool bSetupUndo = false, bool bPrintPythonCommand = false)`  
  Removes an channel host from the animation channel
@note This is just an overload of RemoveAvailableSpace for readability
@param InChannel The animation channel to remove the channel host from
@param InHost The host to remove from the channel from
@param bSetupUndo If set to true the stack will record the change for undo / redo
@param bPrintPythonCommand If set to true a python command equivalent to this call will be printed out
@return Returns true if successful.
- `bool RemoveComponent(FRigComponentKey InComponent, bool bSetupUndo = false, bool bPrintPythonCommand = false)`  
  Removes a component from the hierarchy
@param InComponent The component to remove
@param bSetupUndo If set to true the stack will record the change for undo / redo
@param bPrintPythonCommand If set to true a python command equivalent to this call will be printed out
@return True if the component was removed successfully
- `bool RemoveElement(FRigElementKey InElement, bool bSetupUndo = false, bool bPrintPythonCommand = false)`  
  Removes an existing element from the hierarchy
@param InElement The key of the element to remove
@param bSetupUndo If set to true the stack will record the change for undo / redo
@param bPrintPythonCommand If set to true a python command equivalent to this call will be printed out
@return Returns true if successful.
- `bool RemoveParent(FRigElementKey InChild, FRigElementKey InParent, bool bMaintainGlobalTransform = true, bool bSetupUndo = false, bool bPrintPythonCommand = false)`  
  Removes an existing parent from an element in the hierarchy. For elements that allow only one parent the element will be unparented (same as ::RemoveAllParents)
@param InChild The key of the element to remove the parent for
@param InParent The key of the parent to remove
@param bMaintainGlobalTransform If set to true the child will stay in the same place spatially, otherwise it will maintain it's local transform (and potential move).
@param bSetupUndo If set to true the stack will record the change for undo / redo
@param bPrintPythonCommand If set to true a python command equivalent to this call will be printed out
@return Returns true if successful.
- `FRigComponentKey RenameComponent(FRigComponentKey InComponent, FName InName, bool bSetupUndo = false, bool bPrintPythonCommand = false, bool bClearSelection = true)`  
  Renames an existing component in the hierarchy
@param InComponent The key of the component to rename
@param InName The new name to set for the component
@param bSetupUndo If set to true the stack will record the change for undo / redo
@param bPrintPythonCommand If set to true a python command equivalent to this call will be printed out
@param bClearSelection True if the selection should be cleared after a rename
@return Returns the new key used for the component
- `FRigElementKey RenameElement(FRigElementKey InElement, FName InName, bool bSetupUndo = false, bool bPrintPythonCommand = false, bool bClearSelection = true)`  
  Renames an existing element in the hierarchy
@param InElement The key of the element to rename
@param InName The new name to set for the element
@param bSetupUndo If set to true the stack will record the change for undo / redo
@param bPrintPythonCommand If set to true a python command equivalent to this call will be printed out
@param bClearSelection True if the selection should be cleared after a rename
@return Returns the new element key used for the element
- `bool ReorderElement(FRigElementKey InElement, int InIndex, bool bSetupUndo = false, bool bPrintPythonCommand = false)`  
  Changes the element's index within its default parent (or the top level)
@param InElement The key of the element to rename
@param InIndex The new index of the element to take within its default parent (or the top level)
@param bSetupUndo If set to true the stack will record the change for undo / redo
@param bPrintPythonCommand If set to true a python command equivalent to this call will be printed out
@return Returns true if the element has been reordered accordingly
- `FRigComponentKey ReparentComponent(FRigComponentKey InComponentKey, FRigElementKey InParentElementKey, bool bSetupUndo = false, bool bPrintPythonCommand = false, bool bClearSelection = true)`  
  Reparents an existing component in the hierarchy
@param InComponentKey The component key to reparent
@param InParentElementKey The new element key to reparent to
@param bClearSelection True if the selection should be cleared after a reparenting
@return Returns the new component key if successful or an invalid key if unsuccessful
- `bool SelectComponent(FRigComponentKey InKey, bool bSelect = true, bool bClearSelection = false, bool bSetupUndo = false)`  
  Selects or deselects a component in the hierarchy
@param InKey The key of the component to select
@param bSelect If set to false the component will be deselected
@param bClearSelection If this is true the selection will be cleared
@param bSetupUndo If set to true the stack will record the change for undo / redo
@return Returns true if the selection was applied
- `bool SelectElement(FRigElementKey InKey, bool bSelect = true, bool bClearSelection = false, bool bSetupUndo = false)`  
  Selects or deselects an element in the hierarchy
@param InKey The key of the element to select
@param bSelect If set to false the element will be deselected
@param bClearSelection If this is true the selection will be cleared
@param bSetupUndo If set to true the stack will record the change for undo / redo
@return Returns true if the selection was applied
- `bool SelectHierarchyKey(FRigHierarchyKey InKey, bool bSelect = true, bool bClearSelection = false, bool bSetupUndo = false)`  
  Selects or deselects a component or an element in the hierarchy
@param InKey The key of the component or an element to select
@param bSelect If set to false the component or an element will be deselected
@param bClearSelection If this is true the selection will be cleared
@param bSetupUndo If set to true the stack will record the change for undo / redo
@return Returns true if the selection was applied
- `bool SetAvailableSpaceIndex(FRigElementKey InControl, FRigElementKey InSpace, int InIndex, bool bSetupUndo = false, bool bPrintPythonCommand = false)`  
  Reorders an available space for the given control
@param InControl The control to reorder the host for
@param InSpace The space to set the new index for
@param InIndex The new index of the available space
@param bSetupUndo If set to true the stack will record the change for undo / redo
@param bPrintPythonCommand If set to true a python command equivalent to this call will be printed out
@return Returns true if successful.
- `bool SetAvailableSpaceLabel(FRigElementKey InControl, FRigElementKey InSpace, FName InDisplayLabel, bool bSetupUndo = false, bool bPrintPythonCommand = false)`  
  Updates the label on an available space
@param InControl The control to reorder the host for
@param InSpace The space to set the new index for
@param InDisplayLabel The new label of the available space
@param bSetupUndo If set to true the stack will record the change for undo / redo
@param bPrintPythonCommand If set to true a python command equivalent to this call will be printed out
@return Returns true if successful.
- `bool SetComponentContent(FRigComponentKey InComponent, FString InContent, bool bSetupUndo = false, bool bPrintPythonCommand = false)`  
  Updates the content of a component in the hierarchy
@param InComponent The component to change the content for
@param InContent The serialized text default for the component
@param bSetupUndo If set to true the stack will record the change for undo / redo
@param bPrintPythonCommand If set to true a python command equivalent to this call will be printed out
@return True if the component was updated correctly
- `bool SetComponentSelection(TArray<FRigComponentKey> InKeys, bool bPrintPythonCommand = false)`  
  Sets the selection based on a list of component keys
@param bPrintPythonCommand If set to true a python command equivalent to this call will be printed out
@param InKeys The array of keys of the component to select
@return Returns true if the selection was applied
- `bool SetControlSettings(FRigElementKey InKey, FRigControlSettings InSettings, bool bSetupUndo = false) const`  
  Sets a control's settings given a control key
@param InKey The key of the control to set the settings for
@param InSettings The settings to set
@return Returns true if the settings have been set correctly
- `FName SetDisplayName(FRigElementKey InControl, FName InDisplayName, bool bRenameElement = false, bool bSetupUndo = false, bool bPrintPythonCommand = false)`  
  Sets the display name on a control
@param InControl The key of the control to change the display name for
@param InDisplayName The new display name to set for the control
@param bRenameElement True if the control should also be renamed
@param bSetupUndo If set to true the stack will record the change for undo / redo
@param bPrintPythonCommand If set to true a python command equivalent to this call will be printed out
@return Returns the new display name used for the control
- `SetHierarchy(URigHierarchy InHierarchy)`  
  Sets the hierarchy currently linked to this controller
- `bool SetHierarchySelection(TArray<FRigHierarchyKey> InKeys, bool bPrintPythonCommand = false, bool bSetupUndo = false)`  
  Sets the selection based on a list of component keys
@param InKeys The array of keys of the component to select
@param bPrintPythonCommand If set to true a python command equivalent to this call will be printed out
@param bSetupUndo If set to true the stack will record the change for undo / redo
@return Returns true if the selection was applied
- `bool SetParent(FRigElementKey InChild, FRigElementKey InParent, bool bMaintainGlobalTransform = true, bool bSetupUndo = false, bool bPrintPythonCommand = false)`  
  Sets a new parent to an element. For elements that allow more than one parent the parent list will be replaced.
@param InChild The key of the element to set the parent for
@param InParent The key of the new parent to set
@param bMaintainGlobalTransform If set to true the child will stay in the same place spatially, otherwise it will maintain it's local transform (and potential move).
@param bSetupUndo If set to true the stack will record the change for undo / redo
@param bPrintPythonCommand If set to true a python command equivalent to this call will be printed out
@return Returns true if successful.
- `bool SetSelection(TArray<FRigElementKey> InKeys, bool bPrintPythonCommand = false, bool bSetupUndo = false)`  
  Sets the selection based on a list of element keys
@param InKeys The array of keys of the elements to select
@param bPrintPythonCommand If set to true a python command equivalent to this call will be printed out
@param bSetupUndo If set to true the stack will record the change for undo / redo
@return Returns true if the selection was applied

---

