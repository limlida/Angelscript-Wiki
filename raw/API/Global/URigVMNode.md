### URigVMNode


The Node represents a single statement within a Graph.
Nodes can represent values such as Variables / Parameters,
they can represent Function Invocations or Control Flow
logic statements (such as If conditions of For loops).
Additionally Nodes are used to represent Comment statements.
Nodes contain Pins to represent parameters for Function
Invocations or Value access on Variables / Parameters.

**方法**:

- `bool CanBeUpgraded() const`  
  returns true if the node can be upgraded
- `bool CanOnlyExistOnce() const`  
  Returns true if this node can only exist once in a graph
- `bool ExecutionIsHaltedAtThisNode() const`
- `URigVMPin FindExecutePin() const`  
  Returns the first execute pin
- `URigVMLibraryNode FindFunctionForNode() const`
- `URigVMPin FindPin(FString InPinPath) const`  
  Returns a Pin given it's partial pin path below
this node (for example: "Color.R")
- `URigVMPin FindRootPinByName(FName InPinName) const`  
  Returns a root pin given its name
- `TArray<URigVMPin> GetAggregateInputs() const`
- `TArray<URigVMPin> GetAggregateOutputs() const`
- `TArray<URigVMPin> GetAllPinsRecursively() const`  
  Returns all of the Pins of this Node (including SubPins).
- `FName GetEventName() const`  
  Returns the name of the event
- `URigVMPin GetFirstAggregatePin() const`
- `URigVMGraph GetGraph() const`  
  Returns the Graph of this Node
- `int GetGraphDepth() const`  
  Returns the graph nesting depth of this node
- `URigVMInjectionInfo GetInjectionInfo() const`  
  Returns the injection info of this Node (or nullptr)
- `TArray<URigVMNode> GetLinkedSourceNodes() const`  
  Returns a list of Nodes connected as sources to
this Node as the target.
- `TArray<URigVMNode> GetLinkedTargetNodes() const`  
  Returns a list of Nodes connected as targets to
this Node as the source.
- `TArray<URigVMLink> GetLinks() const`  
  Returns all links to any pin on this node
- `FName GetNextAggregateName(FName InLastAggregatePinName) const`
- `FLinearColor GetNodeColor() const`  
  Returns the color of this node - used for UI.
- `int GetNodeIndex() const`  
  Returns the current index of the Node within the Graph.
- `FRigVMNodeLayout GetNodeLayout(bool bIncludeEmptyCategories = false) const`  
  Returns the pin UI layout for this node
- `FString GetNodePath(bool bRecursive = false) const`  
  Returns the a . separated string containing all of the
names used to reach this Node within the Graph.
(for now this is the same as the Node's name)
- `FString GetNodeSubTitle() const`  
  Get the subtitle of the node
- `FString GetNodeTitle() const`  
  Returns the title of this Node - used for UI.
- `URigVMPin GetOppositeAggregatePin() const`
- `TArray<URigVMPin> GetOrphanedPins() const`  
  Returns all of the top-level orphaned Pins of this Node.
- `TArray<FString> GetParentPinCategories(FString InCategory, bool bOnlyExisting = false, bool bIncludeSelf = false) const`  
  Returns all parent categories of a given
- `FString GetParentPinCategory(FString InCategory, bool bOnlyExisting = false) const`  
  Returns the parent pin category of the given category (or an empty string in case there's no parent)
- `TArray<FString> GetPinCategories() const`  
  Returns all user defined categories on this node
- `FString GetPinCategoryName(FString InCategory) const`  
  Returns the name of pin category
- `TArray<URigVMPin> GetPins() const`  
  Returns all of the top-level Pins of this Node.
- `TArray<URigVMPin> GetPinsForCategory(FString InCategory) const`  
  Returns all pins for a given category
- `FVector2D GetPosition() const`  
  Returns the 2d position of this node - used for UI.
- `FName GetPreviousFName() const`  
  Returns the name of the node prior to the renaming
- `URigVMGraph GetRootGraph() const`  
  Returns the top level / root Graph of this Node
- `URigVMPin GetSecondAggregatePin() const`
- `FVector2D GetSize() const`  
  Returns the 2d size of this node - used for UI.
- `TArray<FString> GetSubPinCategories(FString InCategory, bool bOnlyExisting = false, bool bRecursive = false) const`  
  Returns all sub user defined categories of a given parent category
- `TArray<FRigVMUserWorkflow> GetSupportedWorkflows(ERigVMUserWorkflowType InType, const UObject InSubject) const`  
  returns all supported workflows of the node
- `FText GetToolTipText() const`  
  Returns the tooltip of this node
- `TArray<URigVMPin> GetTraitPins() const`
- `bool HasBreakpoint() const`
- `bool HasEarlyExitMarker() const`
- `bool HasInputPin(bool bIncludeIO = true) const`  
  Returns true if the node has any input pins
- `bool HasIOPin() const`  
  Returns true if the node has any io pins
- `bool HasLazyPin(bool bOnlyConsiderPinsWithLinks = false) const`  
  Returns true if the node has any lazily evaluating pins
- `bool HasOrphanedPins() const`  
  Returns true if the node has orphaned pins - which leads to a compiler error
- `bool HasOutputPin(bool bIncludeIO = true) const`  
  Returns true if the node has any output pins
- `bool HasPinOfDirection(ERigVMPinDirection InDirection) const`  
  Returns true if the node has any pins of the provided direction
- `bool IsAggregate() const`
- `bool IsControlFlowNode() const`  
  return true if this node is a control flow node
- `bool IsDefinedAsConstant() const`  
  Returns true if the node is defined as non-varying
- `bool IsDefinedAsVarying() const`  
  Returns true if the node is defined as non-varying
- `bool IsEvent() const`  
  Returns true if this Node is the beginning of a scope
- `bool IsExcludedByEarlyExit() const`
- `bool IsHighlighted() const`  
  Returns true if this Node should be highlighted
- `bool IsInjected() const`  
  Returns true if this is an injected node.
Injected nodes are managed by pins are are not visible to the user.
- `bool IsInputAggregate() const`
- `bool IsLinkedTo(URigVMNode InNode) const`  
  Returns true if this Node is linked to another
given node through any of the Nodes' Pins.
- `bool IsLoopNode() const`  
  return true if this node is a loop node
- `bool IsMutable() const`  
  Returns true if this Node has side effects or
internal state.
- `bool IsPinCategoryExpanded(FString InCategory) const`  
  Returns all pins for a given category
- `bool IsPure() const`  
  Returns true if this Node has no side-effects
and no internal state.
- `bool IsSelected() const`  
  Returns true if this Node is currently selected.
- `bool IsTraitPin(FName InName) const`
- `bool IsVisibleInUI() const`  
  Returns true if this should be visible in the UI
- `SetExecutionIsHaltedAtThisNode(bool bValue)`
- `SetHasBreakpoint(bool bValue)`
- `SetHasEarlyExitMarker(bool bValue)`
- `SetIsExcludedByEarlyExit(bool bIsExcluded)`

---

