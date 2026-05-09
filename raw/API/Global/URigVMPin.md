### URigVMPin


The Pin represents a single connector / pin on a node in the RigVM model.
Pins can be connected based on rules. Pins also provide access to a 'PinPath',
which essentially represents . separated list of names to reach the pin within
the owning graph. PinPaths are unique.
In comparison to the EdGraph Pin the URigVMPin supports the concept of 'SubPins',
so child / parent relationships between pins. A FVector Pin for example might
have its X, Y and Z components as SubPins. Array Pins will have its elements as
SubPins, and so on.
A URigVMPin is owned solely by a URigVMNode.

**方法**:

- `bool CanProvideDefaultValue() const`  
  Returns true if the pin can / may provide a default value
- `bool ContainsWildCardSubPin() const`  
  Returns true if any of the subpins is a wildcard
- `URigVMLink FindLinkForPin(const URigVMPin InOtherPin) const`  
  Returns the link that represents the connection
between this pin and InOtherPin. nullptr is returned
if the pins are not connected.
- `URigVMPin FindSubPin(FString InPinPath) const`  
  Returns a SubPin given a name / path or nullptr.
- `int GetAbsolutePinIndex() const`  
  Returns the absolute index of the Pin within the node / parent Pin
- `TArray<URigVMPin> GetAllSubPinsRecursively() const`  
  Returns all of the SubPins of this one including sub-sub-pins
- `FString GetArrayElementCppType() const`  
  Returns the C++ data type of an element of the Pin array
- `int GetArraySize() const`  
  Returns the number of elements within an array Pin
- `FString GetCategory() const`  
  Returns the category on a pin. The category is UI relevant only and used
to order pins in the user interface of the node as well as on the details panel.
- `FString GetCPPType() const`  
  Returns the C++ data type of the pin
- `UObject GetCPPTypeObject() const`  
  Returns the struct of the data type of the Pin,
or nullptr otherwise.
- `FName GetCustomWidgetName() const`  
  Returns the name of a custom widget to be used
for editing the Pin.
- `FString GetDefaultValue() const`  
  Returns the default value of the Pin as a string.
Note that this value is computed based on the Pin's
SubPins - so for example for a FVector typed Pin
the default value is actually composed out of the
default values of the X, Y and Z SubPins.
- `ERigVMPinDefaultValueType GetDefaultValueType() const`  
  Returns true if the pin can / may provide a default value
- `ERigVMPinDirection GetDirection() const`  
  Returns the direction of the pin
- `FName GetDisplayName() const`  
  Returns the display label of the pin
- `UEnum GetEnum() const`  
  Returns the enum of the data type of the Pin,
or nullptr otherwise.
- `URigVMGraph GetGraph() const`  
  Returns the graph of this Pin.
- `int GetIndexInCategory() const`  
  Returns index within a category on a pin. The category is UI relevant only and used
to order pins in the user interface of the node as well as on the details panel.
- `TArray<URigVMPin> GetLinkedSourcePins(bool bRecursive = false) const`  
  Returns all of the linked source Pins,
using this Pin as the target.
- `TArray<URigVMPin> GetLinkedTargetPins(bool bRecursive = false) const`  
  Returns all of the linked target Pins,
using this Pin as the source.
- `TArray<URigVMLink> GetLinks() const`  
  Returns all of the links linked to this Pin.
- `FString GetMetaData(FName InKey) const`  
  Returns the keyed metadata associated with this pin, if any
- `URigVMNode GetNode() const`  
  Returns the node of this Pin.
- `FString GetOriginalDefaultValue() const`
- `URigVMPin GetOriginalPinFromInjectedNode() const`  
  Returns the original pin for a pin on an injected
node. This can be used to determine where a link
should go in the user interface
- `URigVMPin GetParentPin() const`  
  Returns the parent Pin - or nullptr if the Pin
is nested directly below a node.
- `UScriptStruct GetParentScriptStruct(const URigVMUnitNode FallbackNode) const`  
  Returns the parent struct of the data type of the Pin
- `URigVMPin GetPinForLink() const`  
  Returns the pin to be used for a link.
This might differ from this actual pin, since
the pin might contain injected nodes.
- `int GetPinIndex() const`  
  Returns the index of the Pin within the node / parent Pin
- `FString GetPinPath(bool bUseNodePath = false) const`  
  Returns a . separated path containing all names of the pin and its owners,
this includes the node name, for example "Node.Color.R"
- `URigVMPin GetRootPin() const`  
  Returns the top-most parent Pin, so for example
for "Node.Transform.Translation.X" this returns
the Pin for "Node.Transform".
- `UScriptStruct GetScriptStruct() const`  
  Returns the struct of the data type of the Pin,
or nullptr otherwise.
- `FString GetSegmentPath(bool bIncludeRootPin = false) const`  
  Returns a . separated path containing all names of the pin within its main
memory owner / storage. This is typically used to create an offset pointer
within memory (FRigVMRegisterOffset).
So for example for a PinPath such as "Node.Transform.Translation.X" the
corresponding SegmentPath is "Translation.X", since the transform is the
storage / memory.
- `TArray<URigVMLink> GetSourceLinks(bool bRecursive = false) const`  
  Returns all of the source pins
using this Pin as the target.
- `FString GetSubPinPath(const URigVMPin InParentPin, bool bIncludeParentPinName = false) const`  
  Returns a . separated path containing all names of the pin and its owners
until we hit the provided parent pin.
- `TArray<URigVMPin> GetSubPins() const`  
  Returns all of the SubPins of this one.
- `TArray<URigVMLink> GetTargetLinks(bool bRecursive = false) const`  
  Returns all of the target links,
using this Pin as the source.
- `FText GetToolTipText() const`  
  Returns the tooltip of this pin
- `bool HasDefaultValueOverride() const`  
  Returns true if the default value was ever changed by the user
- `bool HasMetaData(FName InKey) const`  
  Returns whether the keyed metadata associated with this pin exists (can be empty)
- `bool HasOriginalDefaultValue() const`
- `bool HasUserProvidedDefaultValue() const`
- `bool IsArray() const`  
  Returns true if the data type of the Pin is an array
- `bool IsArrayElement() const`  
  Returns true if the Pin is a SubPin within an array
- `bool IsDefinedAsConstant() const`  
  Returns true if the pin is defined as a constant value / literal
- `bool IsDynamicArray() const`  
  Returns true if this pin represents a dynamic array
- `bool IsEnum() const`  
  Returns true if the data type of the Pin is a enum
- `bool IsExecuteContext() const`  
  Returns true if the C++ data type is an execute context
- `bool IsExpanded() const`  
  Returns true if the pin is currently expanded
- `bool IsFixedSizeArray() const`  
  Returns true if this pin is an array that should be displayed as elements only
- `bool IsInterface() const`  
  Returns true if the data type of the Pin is a interface
- `bool IsLazy() const`  
  Returns true if this pin's value may be executed lazily
- `bool IsLinkedTo(const URigVMPin InPin) const`  
  Returns true if this Pin is linked to another Pin
- `bool IsReferenceCountedContainer() const`  
  Returns true if this data type is referenced counted
- `bool IsRootPin() const`  
  Returns true if this pin is a root pin
- `bool IsStringType() const`  
  Returns true if the C++ data type is FString or FName
- `bool IsStruct() const`  
  Returns true if the data type of the Pin is a struct
- `bool IsStructMember() const`  
  Returns true if the Pin is a SubPin within a struct
- `bool IsTraitPin() const`  
  Returns true if this pin represents a trait
- `bool IsUObject() const`  
  Returns true if the data type of the Pin is a uobject
- `bool IsValidDefaultValue(FString InDefaultValue) const`  
  Returns true if the default value provided is valid
- `bool IsWildCard() const`  
  Returns true if the C++ data type is unknown
- `bool RequiresWatch(bool bCheckExposedPinChain = false) const`  
  Returns true if the pin should be watched
- `bool ShouldHideSubPins() const`  
  Returns true if this pin's subpins should be hidden in the UI
- `bool ShouldOnlyShowSubPins() const`  
  Returns true if this pin is an array that should be displayed as elements only

---

