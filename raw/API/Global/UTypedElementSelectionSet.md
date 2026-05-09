### UTypedElementSelectionSet


A wrapper around an element list that ensures mutation goes via the selection
interfaces, as well as providing some utilities for batching operations.

**属性**:

- `FOnPreChangeDynamic__TypedElementSelectionSet OnPreSelectionChange [Delegate that is invoked whenever the underlying element list is potentially about to change.]`
- `FOnChangeDynamic__TypedElementSelectionSet OnSelectionChange [Delegate that is invoked whenever the underlying element list has been changed.]`


**方法**:

- `bool DeselectElementsFromList(FScriptTypedElementListProxy ElementList, FTypedElementSelectionOptions SelectionOptions)`  
  Attempt to deselect the given elements.
@return True if the selection was changed, false otherwise.
- `FScriptTypedElementListProxy GetNormalizedElementList(FScriptTypedElementListProxy ElementList, FTypedElementSelectionNormalizationOptions NormalizationOptions)`  
  Get a normalized version of the given element list that can be used to perform operations like gizmo manipulation, deletion, copying, etc.
This will do things like expand out groups, and resolve any parent<->child elements so that duplication operations aren't performed on both the parent and the child.
- `FScriptTypedElementListProxy GetNormalizedSelection(FTypedElementSelectionNormalizationOptions NormalizationOptions)`  
  Get a normalized version of this selection set that can be used to perform operations like gizmo manipulation, deletion, copying, etc.
This will do things like expand out groups, and resolve any parent<->child elements so that duplication operations aren't performed on both the parent and the child.
- `bool SelectElementsFromList(FScriptTypedElementListProxy ElementList, FTypedElementSelectionOptions SelectionOptions)`  
  Attempt to select the given elements.
@return True if the selection was changed, false otherwise.
- `bool SetSelectionFromList(FScriptTypedElementListProxy ElementList, FTypedElementSelectionOptions SelectionOptions)`  
  Attempt to make the selection the given elements.
@note Equivalent to calling ClearSelection then SelectElements, but happens in a single batch.
@return True if the selection was changed, false otherwise.
- `bool AllowSelectionModifiers(FScriptTypedElementHandle InElementHandle) const`  
  Test to see whether selection modifiers (Ctrl or Shift) are allowed while selecting this element.
- `bool CanDeselectElement(FScriptTypedElementHandle InElementHandle, FTypedElementSelectionOptions InSelectionOptions) const`  
  Test to see whether the given element can be deselected.
- `bool CanSelectElement(FScriptTypedElementHandle InElementHandle, FTypedElementSelectionOptions InSelectionOptions) const`  
  Test to see whether the given element can be selected.
- `bool ClearSelection(FTypedElementSelectionOptions InSelectionOptions)`  
  Clear the current selection.
@return True if the selection was changed, false otherwise.
- `int CountSelectedElements(TSubclassOf<UInterface> InBaseInterfaceType = nullptr) const`  
  Count the number of selected elements, optionally filtering to elements that implement the given interface.
- `int CountSelectedObjects(const UClass InRequiredClass = nullptr) const`  
  Count the number of selected objects.
- `bool DeselectElement(FScriptTypedElementHandle InElementHandle, FTypedElementSelectionOptions InSelectionOptions)`  
  Attempt to deselect the given element.
@return True if the selection was changed, false otherwise.
- `bool DeselectElements(TArray<FScriptTypedElementHandle> InElementHandles, FTypedElementSelectionOptions InSelectionOptions)`  
  Attempt to deselect the given elements.
@return True if the selection was changed, false otherwise.
- `UObject GetBottomSelectedObject(const UClass InRequiredClass = nullptr) const`  
  Get the last selected object of the given type.
- `FTypedElementSelectionSetState GetCurrentSelectionState() const`  
  Serializes the current selection set.
The calling code is responsible for storing any state information. The selection set can be returned to a prior state using RestoreSelectionState.

@returns the current state of the selection set.
- `int GetNumSelectedElements() const`  
  Get the number of selected elements.
- `TArray<UObject> GetSelectedObjects(const UClass InRequiredClass = nullptr) const`  
  Get the array of selected objects from the currently selected elements.
- `FScriptTypedElementHandle GetSelectionElement(FScriptTypedElementHandle InElementHandle, ETypedElementSelectionMethod InSelectionMethod) const`  
  Given an element, return the element that should actually perform a selection operation.
- `UObject GetTopSelectedObject(const UClass InRequiredClass = nullptr) const`  
  Get the first selected object of the given type.
- `bool HasSelectedElements(TSubclassOf<UInterface> InBaseInterfaceType = nullptr) const`  
  Test whether there selected elements, optionally filtering to elements that implement the given interface.
- `bool HasSelectedObjects(const UClass InRequiredClass = nullptr) const`  
  Test whether there are any selected objects.
- `bool IsElementSelected(FScriptTypedElementHandle InElementHandle, FTypedElementIsSelectedOptions InSelectionOptions) const`  
  Test to see whether the given element is currently considered selected.
- `TArray<FScriptTypedElementHandle> GetSelectedElementHandles(TSubclassOf<UInterface> InBaseInterfaceType = nullptr) const`  
  Get the handle of every selected element, optionally filtering to elements that implement the given interface.
- `RestoreSelectionState(FTypedElementSelectionSetState InSelectionState)`  
  Restores the selection set from the given state.
The calling code is responsible for managing any undo state.
- `bool SelectElement(FScriptTypedElementHandle InElementHandle, FTypedElementSelectionOptions InSelectionOptions)`  
  Attempt to select the given element.
@return True if the selection was changed, false otherwise.
- `bool SelectElements(TArray<FScriptTypedElementHandle> InElementHandles, FTypedElementSelectionOptions InSelectionOptions)`  
  Attempt to select the given elements.
@return True if the selection was changed, false otherwise.
- `bool SetSelection(TArray<FScriptTypedElementHandle> InElementHandles, FTypedElementSelectionOptions InSelectionOptions)`  
  Attempt to make the selection the given elements.
@note Equivalent to calling ClearSelection then SelectElements, but happens in a single batch.
@return True if the selection was changed, false otherwise.

---

