### URigHierarchy


**属性**:

- `FRigHierarchyModifiedDynamicEvent ModifiedEvent []`


**方法**:

- `bool Contains(FRigElementKey InKey) const`  
  Returns true if the provided element key is valid
@param InKey The key to validate
@return Returns true if the provided element key is valid
- `CopyHierarchy(URigHierarchy InHierarchy)`  
  Copies the contents of a hierarchy onto this one
- `CopyPose(URigHierarchy InHierarchy, bool bCurrent, bool bInitial, bool bWeights, bool bMatchPoseInGlobalIfNeeded = false)`  
  Copies the contents of a hierarchy onto this one
- `FRigBoneElement FindBone(FRigElementKey InKey) const`  
  Returns bone element for a given key, for scripting purpose only, for cpp usage, use Find<FRigBoneElement>()
@param InKey The key of the bone element to retrieve.
- `FRigControlElement FindControl(FRigElementKey InKey) const`  
  Returns control element for a given key, for scripting purpose only, for cpp usage, use Find<FRigControlElement>()
@param InKey The key of the control element to retrieve.
- `FRigNullElement FindNull(FRigElementKey InKey) const`  
  Returns null element for a given key, for scripting purpose only, for cpp usage, use Find<FRigControlElement>()
@param InKey The key of the null element to retrieve.
- `TArray<FRigComponentKey> GetAllComponentKeys() const`
- `TArray<FRigElementKey> GetAllKeys(bool bTraverse = true) const`  
  Returns all element keys of this hierarchy
@param bTraverse If set to true the keys will be returned by depth first traversal
@return The keys of all elements
- `TArray<FRigElementKey> GetBones(bool bTraverse = true) const`  
  Returns all Bone elements
@param bTraverse Returns the elements in order of a depth first traversal
- `TArray<bool> GetBoolArrayMetadata(FRigElementKey InItem, FName InMetadataName) const`  
  Queries and returns the value of bool array metadata
@param InItem The element key to return the metadata for
@param InMetadataName The name of the metadata to query
- `bool GetBoolMetadata(FRigElementKey InItem, FName InMetadataName, bool DefaultValue) const`  
  Queries and returns the value of bool metadata
@param InItem The element key to return the metadata for
@param InMetadataName The name of the metadata to query
@param DefaultValue The default value to fall back on
- `TArray<FRigElementKey> GetChildren(FRigElementKey InKey, bool bRecursive = false) const`  
  Returns the child elements of a given element key
@param InKey The key of the element to retrieve the children for
@param bRecursive If set to true grand-children will also be returned etc
@return Returns the child elements
- `FString GetComponentContent(FRigElementKey InElement, int InComponentIndex) const`
- `FRigComponentKey GetComponentKey(FRigElementKey InElement, int InComponentIndex) const`
- `TArray<FRigComponentKey> GetComponentKeys(FRigElementKey InElement) const`
- `FName GetComponentName(FRigElementKey InElement, int InComponentIndex) const`
- `UScriptStruct GetComponentType(FRigElementKey InElement, int InComponentIndex) const`
- `TArray<FRigElementKey> GetConnectors(bool bTraverse = true) const`  
  Returns all Connector elements
@param bTraverse Returns the elements in order of a depth first traversal
- `TArray<FRigConnectorState> GetConnectorStates() const`  
  Returns all of the connectors' state
- `TArray<FRigElementKey> GetControls(bool bTraverse = true) const`  
  Returns all Control elements
@param bTraverse Returns the elements in order of a depth first traversal
- `URigHierarchyController GetController(bool bCreateIfNeeded = true)`  
  Returns a controller for this hierarchy.
Note: If the controller is not available this will return nullptr
even if the bCreateIfNeeded flag is set to true. You can check the
controller's availability with IsControllerAvailable().
@param bCreateIfNeeded Creates a controller if needed
@return The Controller for this hierarchy
- `FVector GetControlPreferredEulerAngles(FRigElementKey InKey, EEulerRotationOrder InRotationOrder, bool bInitial = false) const`  
  Returns a control's preferred euler angles (local transform rotation)
@param InKey The key of the element to retrieve the current value for
@param InRotationOrder The rotation order to use when retrieving the euler angles
@param bInitial If true we'll return the preferred euler angles for the initial - otherwise current transform
@return Returns the current preferred euler angles
- `FVector GetControlPreferredEulerAnglesByIndex(int InElementIndex, EEulerRotationOrder InRotationOrder, bool bInitial = false) const`  
  Returns a control's preferred euler angles (local transform rotation)
@param InElementIndex The element index to look up
@param InRotationOrder The rotation order to use when retrieving the euler angles
@param bInitial If true we'll return the preferred euler angles for the initial - otherwise current transform
@return Returns the current preferred euler angles
- `EEulerRotationOrder GetControlPreferredEulerRotationOrder(FRigElementKey InKey, bool bFromSettings = true) const`  
  Returns a control's preferred euler rotation order
@param InKey The key of the element to retrieve the current value for
@param bFromSettings If true the rotation order will be looked up from the control's settings, otherwise from the currently set animation value
@return Returns the current preferred euler rotation order
- `EEulerRotationOrder GetControlPreferredEulerRotationOrderByIndex(int InElementIndex, bool bFromSettings = true) const`  
  Returns a control's preferred euler rotation order
@param InElementIndex The element index to look up
@param bFromSettings If true the rotation order will be looked up from the control's settings, otherwise from the currently set animation value
@return Returns the current preferred euler rotation order
- `FRotator GetControlPreferredRotator(FRigElementKey InKey, bool bInitial = false) const`  
  Returns a control's preferred rotator (local transform rotation)
@param InKey The key of the element to retrieve the current value for
@param bInitial If true we'll return the preferred rotator for the initial - otherwise current transform
@return Returns the current preferred rotator
- `FRotator GetControlPreferredRotatorByIndex(int InElementIndex, bool bInitial = false) const`  
  Returns a control's preferred rotator (local transform rotation)
@param InElementIndex The element index to look up
@param bInitial If true we'll return the preferred rotator for the initial - otherwise current transform
@return Returns the current preferred rotator
- `FRigControlValue GetControlValue(FRigElementKey InKey, ERigControlValueType InValueType = ERigControlValueType :: Current) const`  
  Returns a control's current value given its key
@param InKey The key of the element to retrieve the current value for
@param InValueType The type of value to return
@return Returns the current value of the control
- `FRigControlValue GetControlValueByIndex(int InElementIndex, ERigControlValueType InValueType = ERigControlValueType :: Current) const`  
  Returns a control's current value given its index
@param InElementIndex The index of the element to retrieve the current value for
@param InValueType The type of value to return
@return Returns the current value of the control
- `TArray<FRigElementKey> GetCurves() const`  
  Returns all Curve elements
- `float32 GetCurveValue(FRigElementKey InKey) const`  
  Returns a curve's value given its key
@param InKey The key of the element to retrieve the value for
@return Returns the value of the curve
- `float32 GetCurveValueByIndex(int InElementIndex) const`  
  Returns a curve's value given its index
@param InElementIndex The index of the element to retrieve the value for
@return Returns the value of the curve
- `FRigElementKey GetDefaultParent(FRigElementKey InKey) const`  
  Returns the default parent element's key of a given child key
@param InKey The key of the element to retrieve the parent for
@return Returns the default parent element key
- `FRigElementKey GetFirstParent(FRigElementKey InKey) const`  
  Returns the first parent element of a given element key
@param InKey The key of the element to retrieve the parents for
@return Returns the first parent element
- `TArray<float32> GetFloatArrayMetadata(FRigElementKey InItem, FName InMetadataName) const`  
  Queries and returns the value of float array metadata
@param InItem The element key to return the metadata for
@param InMetadataName The name of the metadata to query
- `float32 GetFloatMetadata(FRigElementKey InItem, FName InMetadataName, float32 DefaultValue) const`  
  Queries and returns the value of float metadata
@param InItem The element key to return the metadata for
@param InMetadataName The name of the metadata to query
@param DefaultValue The default value to fall back on
- `FTransform GetGlobalControlOffsetTransform(FRigElementKey InKey, bool bInitial = false) const`  
  Returns the global offset transform for a given control element.
@param InKey The key of the control to retrieve the transform for
@param bInitial If true the initial transform will be used
@return The global offset transform
- `FTransform GetGlobalControlOffsetTransformByIndex(int InElementIndex, bool bInitial = false) const`  
  Returns the global offset transform for a given control element.
@param InElementIndex The index of the control to retrieve the transform for
@param bInitial If true the initial transform will be used
@return The global offset transform
- `FTransform GetGlobalControlShapeTransform(FRigElementKey InKey, bool bInitial = false) const`  
  Returns the global shape transform for a given control element.
@param InKey The key of the control to retrieve the transform for
@param bInitial If true the initial transform will be used
@return The global shape transform
- `FTransform GetGlobalControlShapeTransformByIndex(int InElementIndex, bool bInitial = false) const`  
  Returns the global shape transform for a given control element.
@param InElementIndex The index of the control to retrieve the transform for
@param bInitial If true the initial transform will be used
@return The global shape transform
- `FTransform GetGlobalTransform(FRigElementKey InKey, bool bInitial = false) const`  
  Returns the global current or initial value for a given key.
If the key is invalid FTransform::Identity will be returned.
@param InKey The key to retrieve the transform for
@param bInitial If true the initial transform will be used
@return The global current or initial transform's value.
- `FTransform GetGlobalTransformByIndex(int InElementIndex, bool bInitial = false) const`  
  Returns the global current or initial value for a element index.
If the index is invalid FTransform::Identity will be returned.
@param InElementIndex The index to retrieve the transform for
@param bInitial If true the initial transform will be used
@return The global current or initial transform's value.
- `int GetIndex(FRigElementKey InKey) const`  
  Returns the index of an element given its key
@param InKey The key of the element to retrieve the index for
@return The index of the element or INDEX_NONE
- `TArray<int> GetInt32ArrayMetadata(FRigElementKey InItem, FName InMetadataName) const`  
  Queries and returns the value of int32 array metadata
@param InItem The element key to return the metadata for
@param InMetadataName The name of the metadata to query
- `int GetInt32Metadata(FRigElementKey InItem, FName InMetadataName, int DefaultValue) const`  
  Queries and returns the value of int32 metadata
@param InItem The element key to return the metadata for
@param InMetadataName The name of the metadata to query
@param DefaultValue The default value to fall back on
- `FRigElementKey GetKey(int InElementIndex) const`  
  Returns the key of an element given its index
@param InElementIndex The index of the element to retrieve the key for
@return The key of an element given its index
- `TArray<FRigElementKey> GetKeys(TArray<int> InElementIndices) const`  
  Returns the keys of an array of indices
@param InElementIndices The indices to retrieve the keys for
@return The keys of the elements given the indices
- `TArray<FLinearColor> GetLinearColorArrayMetadata(FRigElementKey InItem, FName InMetadataName) const`  
  Queries and returns the value of FLinearColor array metadata
@param InItem The element key to return the metadata for
@param InMetadataName The name of the metadata to query
- `FLinearColor GetLinearColorMetadata(FRigElementKey InItem, FName InMetadataName, FLinearColor DefaultValue) const`  
  Queries and returns the value of FLinearColor metadata
@param InItem The element key to return the metadata for
@param InMetadataName The name of the metadata to query
@param DefaultValue The default value to fall back on
- `FTransform GetLocalControlShapeTransform(FRigElementKey InKey, bool bInitial = false) const`  
  Returns the local shape transform for a given control element.
@param InKey The key of the control to retrieve the transform for
@param bInitial If true the initial transform will be used
@return The local shape transform
- `FTransform GetLocalControlShapeTransformByIndex(int InElementIndex, bool bInitial = false) const`  
  Returns the local shape transform for a given control element.
@param InElementIndex The index of the control to retrieve the transform for
@param bInitial If true the initial transform will be used
@return The local shape transform
- `int GetLocalIndex(FRigElementKey InKey) const`  
  Returns the index of an element given its key within its default parent (or root)
@param InKey The key of the element to retrieve the index for
@return The index of the element or INDEX_NONE
- `FTransform GetLocalTransform(FRigElementKey InKey, bool bInitial = false) const`  
  Returns the local current or initial value for a given key.
If the key is invalid FTransform::Identity will be returned.
@param InKey The key to retrieve the transform for
@param bInitial If true the initial transform will be used
@return The local current or initial transform's value.
- `FTransform GetLocalTransformByIndex(int InElementIndex, bool bInitial = false) const`  
  Returns the local current or initial value for a element index.
If the index is invalid FTransform::Identity will be returned.
@param InElementIndex The index to retrieve the transform for
@param bInitial If true the initial transform will be used
@return The local current or initial transform's value.
- `TArray<FName> GetMetadataNames(FRigElementKey InItem) const`  
  Returns the name of metadata for a given element
@param InItem The element key to return the metadata keys for
- `ERigMetadataType GetMetadataType(FRigElementKey InItem, FName InMetadataName) const`  
  Returns the type of metadata given its name the item it is stored under
@param InItem The element key to return the metadata type for
@param InMetadataName The name of the metadata to return the type for
- `FName GetModuleFName(FRigElementKey InItem) const`  
  Returns the name of the module an element belong to (or NAME_None in case the element doesn't belong to a module)
@return The name the element belongs to (or NAME_None)
- `FString GetModuleName(FRigElementKey InItem) const`  
  Returns the name of the module an element belong to (or an empty string in case the element doesn't belong to a module)
@return The name the element belongs to (or empty string)
- `FString GetModulePrefix(FRigElementKey InItem) const`  
  Returns the prefix of the module an element belong to (or an empty string in case the element doesn't belong to a module)
@return The prefix the element belongs to (or empty string)
- `TArray<FName> GetNameArrayMetadata(FRigElementKey InItem, FName InMetadataName) const`  
  Queries and returns the value of FName array metadata
@param InItem The element key to return the metadata for
@param InMetadataName The name of the metadata to query
- `FName GetNameMetadata(FRigElementKey InItem, FName InMetadataName, FName DefaultValue) const`  
  Queries and returns the value of FName metadata
@param InItem The element key to return the metadata for
@param InMetadataName The name of the metadata to query
@param DefaultValue The default value to fall back on
- `TArray<FRigElementKey> GetNulls(bool bTraverse = true) const`  
  Returns all Null elements
@param bTraverse Returns the elements in order of a depth first traversal
- `int GetNumberOfParents(FRigElementKey InKey) const`  
  Returns the number of parents of an element
@param InKey The key of the element to retrieve the number of parents for
@return Returns the number of parents of an element
- `TArray<FRigElementKey> GetParents(FRigElementKey InKey, bool bRecursive = false) const`  
  Returns the parent elements of a given element key
@param InKey The key of the element to retrieve the parents for
@param bRecursive If set to true parents of parents will also be returned
@return Returns the parent elements
- `FTransform GetParentTransform(FRigElementKey InKey, bool bInitial = false) const`  
  Returns the global current or initial value for a given key.
If the element does not have a parent FTransform::Identity will be returned.
@param InKey The key of the element to retrieve the transform for
@param bInitial If true the initial transform will be used
@return The element's parent's global current or initial transform's value.
- `FTransform GetParentTransformByIndex(int InElementIndex, bool bInitial = false) const`  
  Returns the global current or initial value for a given element index.
If the element does not have a parent FTransform::Identity will be returned.
@param InElementIndex The index of the element to retrieve the transform for
@param bInitial If true the initial transform will be used
@return The element's parent's global current or initial transform's value.
- `FRigElementWeight GetParentWeight(FRigElementKey InChild, FRigElementKey InParent, bool bInitial = false) const`  
  Returns the weight of a parent below a multi parent element
@param InChild The key of the multi parented element
@param InParent The key of the parent to look up the weight for
@param bInitial If true the initial weights will be used
@return Returns the weight of a parent below a multi parent element, or FLT_MAX if the parent is invalid
- `TArray<FRigElementWeight> GetParentWeightArray(FRigElementKey InChild, bool bInitial = false) const`  
  Returns the weights of all parents below a multi parent element
@param InChild The key of the multi parented element
@param bInitial If true the initial weights will be used
@return Returns the weight of a parent below a multi parent element, or FLT_MAX if the parent is invalid
- `FRigPose GetPose(bool bInitial = false, bool bIncludeTransientControls = true) const`  
  Returns the current / initial pose of the hierarchy
@param bInitial If set to true the initial pose will be returned
@return The pose of the hierarchy
@param bIncludeTransientControls If true the transient controls will be included in the pose
- `FName GetPreviousHierarchyName(FRigHierarchyKey InKey) const`  
  Returns the previous name of an element or a component prior to a rename operation
@param InKey The key to request the old name for
- `FRigHierarchyKey GetPreviousHierarchyParent(FRigHierarchyKey InKey) const`  
  Returns the previous parent of an element or a component prior to a reparent operation
@param InKey The key to request the old parent  for
- `FName GetPreviousName(FRigElementKey InKey) const`  
  Returns the previous name of an element prior to a rename operation
@param InKey The key of the element to request the old name for
- `FRigElementKey GetPreviousParent(FRigElementKey InKey) const`  
  Returns the previous parent of an element prior to a reparent operation
@param InKey The key of the element to request the old parent  for
- `TArray<FQuat> GetQuatArrayMetadata(FRigElementKey InItem, FName InMetadataName) const`  
  Queries and returns the value of FQuat array metadata
@param InItem The element key to return the metadata for
@param InMetadataName The name of the metadata to query
- `FQuat GetQuatMetadata(FRigElementKey InItem, FName InMetadataName, FQuat DefaultValue) const`  
  Queries and returns the value of FQuat metadata
@param InItem The element key to return the metadata for
@param InMetadataName The name of the metadata to query
@param DefaultValue The default value to fall back on
- `TArray<FRigElementKey> GetReferences(bool bTraverse = true) const`  
  Returns all references
@param bTraverse Returns the elements in order of a depth first traversal
- `TArray<FRigElementKey> GetRigElementKeyArrayMetadata(FRigElementKey InItem, FName InMetadataName) const`  
  Queries and returns the value of FRigElementKey array metadata
@param InItem The element key to return the metadata for
@param InMetadataName The name of the metadata to query
- `FRigElementKey GetRigElementKeyMetadata(FRigElementKey InItem, FName InMetadataName, FRigElementKey DefaultValue) const`  
  Queries and returns the value of FRigElementKey metadata
@param InItem The element key to return the metadata for
@param InMetadataName The name of the metadata to query
@param DefaultValue The default value to fall back on
- `TArray<FRigElementKey> GetRootElements() const`  
  Returns all root element keys
- `TArray<FRotator> GetRotatorArrayMetadata(FRigElementKey InItem, FName InMetadataName) const`  
  Queries and returns the value of FRotator array metadata
@param InItem The element key to return the metadata for
@param InMetadataName The name of the metadata to query
- `FRotator GetRotatorMetadata(FRigElementKey InItem, FName InMetadataName, FRotator DefaultValue) const`  
  Queries and returns the value of FRotator metadata
@param InItem The element key to return the metadata for
@param InMetadataName The name of the metadata to query
@param DefaultValue The default value to fall back on
- `UModularRigRuleManager GetRuleManager(bool bCreateIfNeeded = true)`  
  Returns a rule manager for this hierarchy
Note: If the manager is not available this will return nullptr
even if the bCreateIfNeeded flag is set to true.
@param bCreateIfNeeded Creates a controller if needed
@return The Controller for this hierarchy
- `TArray<FRigHierarchyKey> GetSelectedHierarchyKeys() const`  
  Returns the keys of selected elements and components
@return An array of the currently selected elements
- `TArray<FRigElementKey> GetSelectedKeys(ERigElementType InTypeFilter = ERigElementType :: All) const`  
  Returns the keys of selected elements
@InTypeFilter The types to retrieve the selection for
@return An array of the currently selected elements
- `TArray<FRigElementKey> GetSockets(bool bTraverse = true) const`  
  Returns all Socket elements
@param bTraverse Returns the elements in order of a depth first traversal
- `TArray<FRigSocketState> GetSocketStates() const`  
  Returns all of the sockets' state
- `TArray<FName> GetTags(FRigElementKey InItem) const`  
  * Returns the tags for a given item
* @param InItem The item to return the tags for
- `TArray<FTransform> GetTransformArrayMetadata(FRigElementKey InItem, FName InMetadataName) const`  
  Queries and returns the value of FTransform array metadata
@param InItem The element key to return the metadata for
@param InMetadataName The name of the metadata to query
- `FTransform GetTransformMetadata(FRigElementKey InItem, FName InMetadataName, FTransform DefaultValue) const`  
  Queries and returns the value of FTransform metadata
@param InItem The element key to return the metadata for
@param InMetadataName The name of the metadata to query
@param DefaultValue The default value to fall back on
- `TArray<FVector> GetVectorArrayMetadata(FRigElementKey InItem, FName InMetadataName) const`  
  Queries and returns the value of FVector array metadata
@param InItem The element key to return the metadata for
@param InMetadataName The name of the metadata to query
- `FVector GetVectorMetadata(FRigElementKey InItem, FName InMetadataName, FVector DefaultValue) const`  
  Queries and returns the value of FVector metadata
@param InItem The element key to return the metadata for
@param InMetadataName The name of the metadata to query
@param DefaultValue The default value to fall back on
- `bool HasTag(FRigElementKey InItem, FName InTag) const`  
  * Returns true if a given item has a certain tag
* @param InItem The item to return the tags for
* @param InTag The tag to check
- `bool IsComponentSelected(FRigComponentKey InKey) const`  
  Returns true if a given component is selected
@param InKey The key to check
@return true if a given component is selected
- `bool IsControllerAvailable() const`  
  Returns true if the hierarchy controller is currently available
The controller may not be available during certain events.
If the controller is not available then GetController() will return nullptr.
- `bool IsCurveValueSet(FRigElementKey InKey) const`  
  Returns whether a curve's value is set, given its key
@param InKey The key of the element to retrieve the value for
@return Returns true if the value is set, false otherwise.
- `bool IsCurveValueSetByIndex(int InElementIndex) const`  
  Returns a curve's value given its index
@param InElementIndex The index of the element to retrieve the value for
@return Returns true if the value is set, false otherwise.
- `bool IsParentedTo(FRigElementKey InChild, FRigElementKey InParent) const`  
  Returns true if an element is parented to another element
@param InChild The key of the child element to check for a parent
@param InParent The key of the parent element to check for
@return True if the given parent and given child have a parent-child relationship
- `bool IsProcedural(FRigElementKey InKey) const`  
  Returns true if the provided element is procedural.
@param InKey The key to validate
@return Returns true if the element is procedural
- `bool IsSelected(FRigElementKey InKey) const`  
  Returns true if a given element is selected
@param InKey The key to check
@return true if a given element is selected
- `bool IsSelectedByIndex(int InIndex) const`  
  Returns true if a given element is selected
@param InIndex The index to check
@return true if a given element is selected
- `bool IsValidIndex(int InElementIndex) const`  
  Returns true if the provided element index is valid
@param InElementIndex The index to validate
@return Returns true if the provided element index is valid
- `int Num() const`  
  Returns the number of elements in the Hierarchy.
@return The number of elements in the Hierarchy
- `int NumComponents(FRigElementKey InElement) const`
- `bool RemoveAllMetadata(FRigElementKey InItem)`  
  Removes all of the metadata under a given item
@param InItem The element key to search under
- `bool RemoveMetadata(FRigElementKey InItem, FName InMetadataName)`  
  Removes the metadata under a given element
@param InItem The element key to search under
@param InMetadataName The name of the metadata to remove
- `Reset()`  
  Clears the whole hierarchy and removes all elements.
- `ResetCurveValues()`  
  Resets all curves to 0.0
- `ResetPoseToInitial(ERigElementType InTypeFilter)`  
  Resets the current pose of a filtered list of elements to the initial / ref pose.
- `ResetToDefault()`  
  Resets the hierarchy to the state of its default. This refers to the
hierarchy on the default object.
- `TArray<FRigElementKey> RestoreConnectorsFromStates(TArray<FRigConnectorState> InStates, bool bSetupUndoRedo = false)`  
  Try to restore the connectors from the state structs
- `TArray<FRigElementKey> RestoreSocketsFromStates(TArray<FRigSocketState> InStates, bool bSetupUndoRedo = false)`  
  Try to restore the sockets from the state structs
- `SendAutoKeyEvent(FRigElementKey InElement, float32 InOffsetInSeconds = 0.000000, bool bAsynchronous = true)`  
  Sends an autokey event from the hierarchy to the world
@param InElement The element to send the autokey for
@param InOffsetInSeconds The time offset in seconds
@param bAsynchronous If set to true the event will go on a thread safe queue
- `bool SetBoolArrayMetadata(FRigElementKey InItem, FName InMetadataName, TArray<bool> InValue)`  
  Sets the metadata to a bool array value
@param InItem The element key to set the metadata for
@param InMetadataName The name of the metadata to set
@param InValue The value to set
@return Returns true if setting the metadata was successful
- `bool SetBoolMetadata(FRigElementKey InItem, FName InMetadataName, bool InValue)`  
  Sets the metadata to a bool value
@param InItem The element key to set the metadata for
@param InMetadataName The name of the metadata to set
@param InValue The value to set
@return Returns true if setting the metadata was successful
- `SetConnectorSettings(FRigElementKey InKey, FRigConnectorSettings InSettings, bool bSetupUndo = false, bool bForce = false, bool bPrintPythonCommands = false)`  
  Sets the connector settings for a given connector element by key
@param InKey The key of the connector element to set the settings for
@param InSettings The new connector settings value to set
@param bSetupUndo If true the transform stack will be setup for undo / redo
- `SetConnectorSettingsByIndex(int InElementIndex, FRigConnectorSettings InSettings, bool bSetupUndo = false, bool bForce = false, bool bPrintPythonCommands = false)`  
  Sets the connector settings for a given connector element by index
@param InElementIndex The index of the connector element to set the settings for
@param InSettings The new connector settings value to set
@param bSetupUndo If true the transform stack will be setup for undo / redo
- `SetControlOffsetTransform(FRigElementKey InKey, FTransform InTransform, bool bInitial = false, bool bAffectChildren = true, bool bSetupUndo = false, bool bPrintPythonCommands = false)`  
  Sets the offset transform for a given control element by key
@param InKey The key of the control element to set the offset transform for
@param InTransform The new offset transform value to set
@param bInitial If true the initial value will be used
@param bAffectChildren If set to false children will not move (maintain global).
@param bSetupUndo If true the transform stack will be setup for undo / redo
- `SetControlOffsetTransformByIndex(int InElementIndex, FTransform InTransform, bool bInitial = false, bool bAffectChildren = true, bool bSetupUndo = false, bool bPrintPythonCommands = false)`  
  Sets the local offset transform for a given control element by index
@param InElementIndex The index of the control element to set the offset transform for
@param InTransform The new local offset transform value to set
@param bInitial If true the initial value will be used
@param bAffectChildren If set to false children will not move (maintain global).
@param bSetupUndo If true the transform stack will be setup for undo / redo
- `SetControlPreferredEulerAngles(FRigElementKey InKey, FVector InEulerAngles, EEulerRotationOrder InRotationOrder, bool bInitial = false, bool bFixEulerFlips = false)`  
  Sets a control's preferred euler angles (local transform rotation)
@param InKey The key of the element to retrieve the current value for
@param InEulerAngles The new preferred euler angles to set
@param InRotationOrder The rotation order to use when setting the euler angles
@param bInitial If true we'll return the preferred euler angles for the initial - otherwise current transform
@param bFixEulerFlips If true the new euler angles value will use the shortest path
- `SetControlPreferredEulerAnglesByIndex(int InElementIndex, FVector InEulerAngles, EEulerRotationOrder InRotationOrder, bool bInitial = false, bool bFixEulerFlips = false)`  
  Sets a control's preferred euler angles (local transform rotation)
@param InElementIndex The element index to look up
@param InEulerAngles The new preferred euler angles to set
@param InRotationOrder The rotation order to use when setting the euler angles
@param bInitial If true we'll return the preferred euler angles for the initial - otherwise current transform
@param bFixEulerFlips If true the new euler angles value will use the shortest path
- `SetControlPreferredRotationOrder(FRigElementKey InKey, EEulerRotationOrder InRotationOrder)`  
  Sets a control's preferred euler rotation order
@param InKey The key of the element to retrieve the current value for
@param InRotationOrder The rotation order to use when setting the euler angles
- `SetControlPreferredRotationOrderByIndex(int InElementIndex, EEulerRotationOrder InRotationOrder)`  
  Sets a control's preferred euler rotation order
@param InElementIndex The element index to look up
@param InRotationOrder The rotation order to use when setting the euler angles
- `SetControlPreferredRotator(FRigElementKey InKey, FRotator InRotator, bool bInitial = false, bool bFixEulerFlips = false)`  
  Sets a control's preferred rotator (local transform rotation)
@param InKey The key of the element to retrieve the current value for
@param InRotator The new preferred rotator to set
@param bInitial If true we'll return the preferred rotator for the initial - otherwise current transform
@param bFixEulerFlips If true the new rotator value will use the shortest path
- `SetControlPreferredRotatorByIndex(int InElementIndex, FRotator InRotator, bool bInitial = false, bool bFixEulerFlips = false)`  
  Sets a control's preferred rotator (local transform rotation)
@param InElementIndex The element index to look up
@param InRotator The new preferred rotator to set
@param bInitial If true we'll return the preferred rotator for the initial - otherwise current transform
@param bFixEulerFlips If true the new rotator value will use the shortest path
- `SetControlSettings(FRigElementKey InKey, FRigControlSettings InSettings, bool bSetupUndo = false, bool bForce = false, bool bPrintPythonCommands = false)`  
  Sets the control settings for a given control element by key
@param InKey The key of the control element to set the settings for
@param InSettings The new control settings value to set
@param bSetupUndo If true the transform stack will be setup for undo / redo
- `SetControlSettingsByIndex(int InElementIndex, FRigControlSettings InSettings, bool bSetupUndo = false, bool bForce = false, bool bPrintPythonCommands = false)`  
  Sets the control settings for a given control element by index
@param InElementIndex The index of the control element to set the settings for
@param InSettings The new control settings value to set
@param bSetupUndo If true the transform stack will be setup for undo / redo
- `SetControlShapeTransform(FRigElementKey InKey, FTransform InTransform, bool bInitial = false, bool bSetupUndo = false)`  
  Sets the shape transform for a given control element by key
@param InKey The key of the control element to set the shape transform for
@param InTransform The new shape transform value to set
@param bInitial If true the initial value will be used
@param bSetupUndo If true the transform stack will be setup for undo / redo
- `SetControlShapeTransformByIndex(int InElementIndex, FTransform InTransform, bool bInitial = false, bool bSetupUndo = false)`  
  Sets the local shape transform for a given control element by index
@param InElementIndex The index of the control element to set the shape transform for
@param InTransform The new local shape transform value to set
@param bInitial If true the initial value will be used
@param bSetupUndo If true the transform stack will be setup for undo / redo
- `SetControlValue(FRigElementKey InKey, FRigControlValue InValue, ERigControlValueType InValueType = ERigControlValueType :: Current, bool bSetupUndo = false, bool bPrintPythonCommands = false)`  
  Sets a control's current value given its key
@param InKey The key of the element to set the current value for
@param InValue The value to set on the control
@param InValueType The type of value to set
@param bSetupUndo If true the transform stack will be setup for undo / redo
- `SetControlValueByIndex(int InElementIndex, FRigControlValue InValue, ERigControlValueType InValueType = ERigControlValueType :: Current, bool bSetupUndo = false, bool bPrintPythonCommands = false)`  
  Sets a control's current value given its index
@param InElementIndex The index of the element to set the current value for
@param InValue The value to set on the control
@param InValueType The type of value to set
@param bSetupUndo If true the transform stack will be setup for undo / redo
- `SetControlVisibility(FRigElementKey InKey, bool bVisibility)`  
  Sets a control's current visibility based on a key
@param InKey The key of the element to set the visibility for
@param bVisibility The visibility to set on the control
- `SetControlVisibilityByIndex(int InElementIndex, bool bVisibility)`  
  Sets a control's current visibility based on a key
@param InElementIndex The index of the element to set the visibility for
@param bVisibility The visibility to set on the control
- `SetCurveValue(FRigElementKey InKey, float32 InValue, bool bSetupUndo = false)`  
  Sets a curve's value given its key
@param InKey The key of the element to set the value for
@param InValue The value to set on the curve
@param bSetupUndo If true the transform stack will be setup for undo / redo
- `SetCurveValueByIndex(int InElementIndex, float32 InValue, bool bSetupUndo = false)`  
  Sets a curve's value given its index
@param InElementIndex The index of the element to set the value for
@param InValue The value to set on the curve
@param bSetupUndo If true the transform stack will be setup for undo / redo
- `bool SetFloatArrayMetadata(FRigElementKey InItem, FName InMetadataName, TArray<float32> InValue)`  
  Sets the metadata to a float array value
@param InItem The element key to set the metadata for
@param InMetadataName The name of the metadata to set
@param InValue The value to set
@return Returns true if setting the metadata was successful
- `bool SetFloatMetadata(FRigElementKey InItem, FName InMetadataName, float32 InValue)`  
  Sets the metadata to a float value
@param InItem The element key to set the metadata for
@param InMetadataName The name of the metadata to set
@param InValue The value to set
@return Returns true if setting the metadata was successful
- `SetGlobalTransform(FRigElementKey InKey, FTransform InTransform, bool bInitial = false, bool bAffectChildren = true, bool bSetupUndo = false, bool bPrintPythonCommand = false)`  
  Sets the global current or initial transform for a given key.
@param InKey The key to set the transform for
@param InTransform The new transform value to set
@param bInitial If true the initial transform will be used
@param bAffectChildren If set to false children will not move (maintain global).
@param bSetupUndo If true the transform stack will be setup for undo / redo
- `SetGlobalTransformByIndex(int InElementIndex, FTransform InTransform, bool bInitial = false, bool bAffectChildren = true, bool bSetupUndo = false, bool bPrintPythonCommand = false)`  
  Sets the global current or initial transform for a given element index.
@param InElementIndex The index of the element to set the transform for
@param InTransform The new transform value to set
@param bInitial If true the initial transform will be used
@param bAffectChildren If set to false children will not move (maintain global).
@param bSetupUndo If true the transform stack will be setup for undo / redo
- `bool SetInt32ArrayMetadata(FRigElementKey InItem, FName InMetadataName, TArray<int> InValue)`  
  Sets the metadata to a int32 array value
@param InItem The element key to set the metadata for
@param InMetadataName The name of the metadata to set
@param InValue The value to set
@return Returns true if setting the metadata was successful
- `bool SetInt32Metadata(FRigElementKey InItem, FName InMetadataName, int InValue)`  
  Sets the metadata to a int32 value
@param InItem The element key to set the metadata for
@param InMetadataName The name of the metadata to set
@param InValue The value to set
@return Returns true if setting the metadata was successful
- `bool SetLinearColorArrayMetadata(FRigElementKey InItem, FName InMetadataName, TArray<FLinearColor> InValue)`  
  Sets the metadata to a FLinearColor array value
@param InItem The element key to set the metadata for
@param InMetadataName The name of the metadata to set
@param InValue The value to set
@return Returns true if setting the metadata was successful
- `bool SetLinearColorMetadata(FRigElementKey InItem, FName InMetadataName, FLinearColor InValue)`  
  Sets the metadata to a FLinearColor value
@param InItem The element key to set the metadata for
@param InMetadataName The name of the metadata to set
@param InValue The value to set
@return Returns true if setting the metadata was successful
- `SetLocalTransform(FRigElementKey InKey, FTransform InTransform, bool bInitial = false, bool bAffectChildren = true, bool bSetupUndo = false, bool bPrintPythonCommands = false)`  
  Sets the local current or initial transform for a given key.
@param InKey The key to set the transform for
@param InTransform The new transform value to set
@param bInitial If true the initial transform will be used
@param bSetupUndo If true the transform stack will be setup for undo / redo
@param bAffectChildren If set to false children will not move (maintain global).
- `SetLocalTransformByIndex(int InElementIndex, FTransform InTransform, bool bInitial = false, bool bAffectChildren = true, bool bSetupUndo = false, bool bPrintPythonCommands = false)`  
  Sets the local current or initial transform for a given element index.
@param InElementIndex The index of the element to set the transform for
@param InTransform The new transform value to set
@param bInitial If true the initial transform will be used
@param bSetupUndo If true the transform stack will be setup for undo / redo
@param bAffectChildren If set to false children will not move (maintain global).
- `bool SetNameArrayMetadata(FRigElementKey InItem, FName InMetadataName, TArray<FName> InValue)`  
  Sets the metadata to a FName array value
@param InItem The element key to set the metadata for
@param InMetadataName The name of the metadata to set
@param InValue The value to set
@return Returns true if setting the metadata was successful
- `bool SetNameMetadata(FRigElementKey InItem, FName InMetadataName, FName InValue)`  
  Sets the metadata to a FName value
@param InItem The element key to set the metadata for
@param InMetadataName The name of the metadata to set
@param InValue The value to set
@return Returns true if setting the metadata was successful
- `bool SetParentWeight(FRigElementKey InChild, FRigElementKey InParent, FRigElementWeight InWeight, bool bInitial = false, bool bAffectChildren = true)`  
  Sets the weight of a parent below a multi parent element
@param InChild The key of the multi parented element
@param InParent The key of the parent to look up the weight for
@param InWeight The new weight to set for the parent
@param bInitial If true the initial weights will be used
@param bAffectChildren If set to false children will not move (maintain global).
@return Returns true if changing the weight was successful
- `bool SetParentWeightArray(FRigElementKey InChild, TArray<FRigElementWeight> InWeights, bool bInitial = false, bool bAffectChildren = true)`  
  Sets the all of the weights of the parents of a multi parent element
@param InChild The key of the multi parented element
@param InWeights The new weights to set for the parents
@param bInitial If true the initial weights will be used
@param bAffectChildren If set to false children will not move (maintain global).
@return Returns true if changing the weight was successful
- `SetPose(FRigPose InPose)`  
  Sets the current / initial pose of the hierarchy
@param InPose The pose to set on the hierarchy
- `bool SetQuatArrayMetadata(FRigElementKey InItem, FName InMetadataName, TArray<FQuat> InValue)`  
  Sets the metadata to a FQuat array value
@param InItem The element key to set the metadata for
@param InMetadataName The name of the metadata to set
@param InValue The value to set
@return Returns true if setting the metadata was successful
- `bool SetQuatMetadata(FRigElementKey InItem, FName InMetadataName, FQuat InValue)`  
  Sets the metadata to a FQuat value
@param InItem The element key to set the metadata for
@param InMetadataName The name of the metadata to set
@param InValue The value to set
@return Returns true if setting the metadata was successful
- `bool SetRigElementKeyArrayMetadata(FRigElementKey InItem, FName InMetadataName, TArray<FRigElementKey> InValue)`  
  Sets the metadata to a FRigElementKey array value
@param InItem The element key to set the metadata for
@param InMetadataName The name of the metadata to set
@param InValue The value to set
@return Returns true if setting the metadata was successful
- `bool SetRigElementKeyMetadata(FRigElementKey InItem, FName InMetadataName, FRigElementKey InValue)`  
  Sets the metadata to a FRigElementKey value
@param InItem The element key to set the metadata for
@param InMetadataName The name of the metadata to set
@param InValue The value to set
@return Returns true if setting the metadata was successful
- `bool SetRotatorArrayMetadata(FRigElementKey InItem, FName InMetadataName, TArray<FRotator> InValue)`  
  Sets the metadata to a FRotator array value
@param InItem The element key to set the metadata for
@param InMetadataName The name of the metadata to set
@param InValue The value to set
@return Returns true if setting the metadata was successful
- `bool SetRotatorMetadata(FRigElementKey InItem, FName InMetadataName, FRotator InValue)`  
  Sets the metadata to a FRotator value
@param InItem The element key to set the metadata for
@param InMetadataName The name of the metadata to set
@param InValue The value to set
@return Returns true if setting the metadata was successful
- `bool SetTag(FRigElementKey InItem, FName InTag)`  
  * Sets a tag on an element in the hierarchy
* @param InItem The item to set the tag for
* @param InTag The tag to set
- `bool SetTransformArrayMetadata(FRigElementKey InItem, FName InMetadataName, TArray<FTransform> InValue)`  
  Sets the metadata to a FTransform array value
@param InItem The element key to set the metadata for
@param InMetadataName The name of the metadata to set
@param InValue The value to set
@return Returns true if setting the metadata was successful
- `bool SetTransformMetadata(FRigElementKey InItem, FName InMetadataName, FTransform InValue)`  
  Sets the metadata to a FTransform value
@param InItem The element key to set the metadata for
@param InMetadataName The name of the metadata to set
@param InValue The value to set
@return Returns true if setting the metadata was successful
- `bool SetVectorArrayMetadata(FRigElementKey InItem, FName InMetadataName, TArray<FVector> InValue)`  
  Sets the metadata to a FVector array value
@param InItem The element key to set the metadata for
@param InMetadataName The name of the metadata to set
@param InValue The value to set
@return Returns true if setting the metadata was successful
- `bool SetVectorMetadata(FRigElementKey InItem, FName InMetadataName, FVector InValue)`  
  Sets the metadata to a FVector value
@param InItem The element key to set the metadata for
@param InMetadataName The name of the metadata to set
@param InValue The value to set
@return Returns true if setting the metadata was successful
- `TArray<FRigElementKey> SortKeys(TArray<FRigElementKey> InKeys) const`  
  Sorts the input key list by traversing the hierarchy
@param InKeys The keys to sort
@return The sorted keys
- `bool SwitchToDefaultParent(FRigElementKey InChild, bool bInitial = false, bool bAffectChildren = true)`  
  Switches a multi parent element to its first parent
@param InChild The key of the multi parented element
@param bInitial If true the initial weights will be used
@param bAffectChildren If set to false children will not move (maintain global).
@return Returns true if changing the weight was successful
- `bool SwitchToParent(FRigElementKey InChild, FRigElementKey InParent, bool bInitial = false, bool bAffectChildren = true)`  
  Switches a multi parent element to a single parent.
This sets the new parent's weight to 1.0 and disables
weights for all other potential parents.
@param InChild The key of the multi parented element
@param InParent The key of the parent to look up the weight for
@param bInitial If true the initial weights will be used
@param bAffectChildren If set to false children will not move (maintain global).
@return Returns true if changing the weight was successful
- `bool SwitchToWorldSpace(FRigElementKey InChild, bool bInitial = false, bool bAffectChildren = true)`  
  Switches a multi parent element to world space.
This injects a world space reference.
@param InChild The key of the multi parented element
@param bInitial If true the initial weights will be used
@param bAffectChildren If set to false children will not move (maintain global).
@return Returns true if changing the weight was successful
- `UnsetCurveValue(FRigElementKey InKey, bool bSetupUndo = false)`  
  Sets a curve's value given its key
@param InKey The key of the element to set the value for
@param bSetupUndo If true the transform stack will be setup for undo / redo
- `UnsetCurveValueByIndex(int InElementIndex, bool bSetupUndo = false)`  
  Sets a curve's value given its index
@param InElementIndex The index of the element to set the value for
@param bSetupUndo If true the transform stack will be setup for undo / redo

---

