### URigVMController


The Controller is the sole authority to perform changes
on the Graph. The Controller itself is stateless.
The Controller offers a Modified event to subscribe to
for user interface views - so they can be informed about
any change that's happening within the Graph.
The Controller routes all changes through the Graph itself,
so you can have N Controllers performing edits on 1 Graph,
and N Views subscribing to 1 Controller.
In Python you can also subscribe to this event to be
able to react to topological changes of the Graph there.

**属性**:

- `FRigVMGraphModifiedDynamicEvent ModifiedEvent []`


**方法**:

- `FString AddAggregatePin(FString InNodeName, FString InPinName, FString InDefaultValue = "", bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`
- `URigVMNode AddArrayNode(ERigVMOpCode InOpCode, FString InCPPType, UObject InCPPTypeObject, FVector2D InPosition = FVector2D ( ), FString InNodeName = "", bool bSetupUndoRedo = true, bool bPrintPythonCommand = false, bool bIsPatching = false)`  
  Adds a Array Node to the edited Graph.
This causes a NodeAdded modified event.
- `URigVMNode AddArrayNodeFromObjectPath(ERigVMOpCode InOpCode, FString InCPPType, FString InCPPTypeObjectPath, FVector2D InPosition = FVector2D ( ), FString InNodeName = "", bool bSetupUndoRedo = true, bool bPrintPythonCommand = false, bool bIsPatching = false)`  
  Adds a Array Node to the edited Graph given a struct object path name.
This causes a NodeAdded modified event.
- `FString AddArrayPin(FString InArrayPinPath, FString InDefaultValue = "", bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`  
  Adds an array element pin to the end of an array pin.
This causes a PinArraySizeChanged modified event.
- `URigVMNode AddBranchNode(FVector2D InPosition = FVector2D ( ), FString InNodeName = "", bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`  
  Adds a branch node to the graph.
Branch nodes can be used to split the execution of into multiple branches,
allowing to drive behavior by logic.
- `URigVMCommentNode AddCommentNode(FString InCommentText, FVector2D InPosition = FVector2D ( ), FVector2D InSize = FVector2D ( 400.000000 , 300.000000 ), FLinearColor InColor = FLinearColor ( 0.000000 , 0.000000 , 0.000000 , 1.000000 ), FString InNodeName = "", bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`  
  Adds a Comment Node to the edited Graph.
Comments can be used to annotate the Graph.
This causes a NodeAdded modified event.
- `bool AddDefaultTagToFunctionVariant(FName InFunctionName, FName InTagName, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`  
  Adds a default tag to a function variant
- `bool AddEmptyPinCategory(FName InNodeName, FString InCategory, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`  
  Adds a new pin category. The category is UI relevant only and used
to order pins in the user interface of the node as well as on the details panel.
- `URigVMEnumNode AddEnumNode(FName InCPPTypeObjectPath, FVector2D InPosition = FVector2D ( ), FString InNodeName = "", bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`  
  Adds an enum node to the graph
Enum nodes can be used to represent constant enum values within the graph
- `FName AddExposedPin(FName InPinName, ERigVMPinDirection InDirection, FString InCPPType, FName InCPPTypeObjectPath, FString InDefaultValue, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`  
  Adds an exposed pin to the graph controlled by this
- `URigVMFunctionReferenceNode AddExternalFunctionReferenceNode(FString InHostPath, FName InFunctionName, FVector2D InNodePosition = FVector2D ( ), FString InNodeName = "", bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`
- `URigVMRerouteNode AddFreeRerouteNode(FString InCPPType, FName InCPPTypeObjectPath, bool bIsConstant, FName InCustomWidgetName, FString InDefaultValue, FVector2D InPosition = FVector2D ( ), FString InNodeName = "", bool bSetupUndoRedo = true)`  
  Adds a free Reroute Node
- `URigVMFunctionReferenceNode AddFunctionReferenceNode(URigVMLibraryNode InFunctionDefinition, FVector2D InNodePosition = FVector2D ( ), FString InNodeName = "", bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`
- `URigVMFunctionReferenceNode AddFunctionReferenceNodeFromDescription(FRigVMGraphFunctionHeader InFunctionDefinition, FVector2D InNodePosition = FVector2D ( ), FString InNodeName = "", bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`  
  Adds a function reference / invocation to the graph
- `URigVMLibraryNode AddFunctionToLibrary(FName InFunctionName, bool bMutable, FVector2D InNodePosition = FVector2D ( ), bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`  
  Adds a function definition to a function library graph
- `URigVMNode AddIfNode(FString InCPPType, FName InCPPTypeObjectPath, FVector2D InPosition = FVector2D ( ), FString InNodeName = "", bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`  
  Adds an if node to the graph.
If nodes can be used to pick between two values based on a condition.
- `URigVMNode AddIfNodeFromStruct(UScriptStruct InScriptStruct, FVector2D InPosition = FVector2D ( ), FString InNodeName = "", bool bSetupUndoRedo = true)`
- `URigVMInjectionInfo AddInjectedNode(FString InPinPath, bool bAsInput, UScriptStruct InScriptStruct, FName InMethodName, FName InInputPinName, FName InOutputPinName, FString InNodeName = "", bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`  
  Adds a Function / Struct Node to the edited Graph as an injected node
UnitNode represent a RIGVM_METHOD declaration on a USTRUCT.
This causes a NodeAdded modified event.
- `URigVMInjectionInfo AddInjectedNodeFromStructPath(FString InPinPath, bool bAsInput, FString InScriptStructPath, FName InMethodName, FName InInputPinName, FName InOutputPinName, FString InNodeName = "", bool bSetupUndoRedo = true)`  
  Adds a Function / Struct Node to the edited Graph as an injected node
UnitNode represent a RIGVM_METHOD declaration on a USTRUCT.
This causes a NodeAdded modified event.
- `URigVMInvokeEntryNode AddInvokeEntryNode(FName InEntryName, FVector2D InPosition = FVector2D ( ), FString InNodeName = "", bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`  
  Adds an entry invocation node
This causes a NodeAdded modified event.
- `bool AddLink(FString InOutputPinPath, FString InInputPinPath, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false, ERigVMPinDirection InUserDirection = ERigVMPinDirection :: Output, bool bCreateCastNode = false)`  
  Adds a link to the graph.
This causes a LinkAdded modified event.
- `FRigVMGraphVariableDescription AddLocalVariable(FName InVariableName, FString InCPPType, UObject InCPPTypeObject, FString InDefaultValue, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`  
  Add a local variable to the graph
- `FRigVMGraphVariableDescription AddLocalVariableFromObjectPath(FName InVariableName, FString InCPPType, FString InCPPTypeObjectPath, FString InDefaultValue, bool bSetupUndoRedo = true)`  
  Add a local variable to the graph given a struct object path name.
- `bool AddOverrideToAllPinsOnNode(FName InNodeName, bool bSetupUndo = true, bool bPrintPythonCommand = false)`  
  Adds an override to all pins on a node
- `bool AddOverrideToAllPinsOnNodes(TArray<FName> InNodeNames, bool bSetupUndo = true, bool bPrintPythonCommand = false)`  
  Adds an override to all pins on a list of nodes
- `bool AddOverrideToPin(FString InPinPath, bool bSetupUndo = true, bool bPrintPythonCommand = false)`  
  Adds an override to the given pin path
- `bool AddOverrideToPins(TArray<FString> InPinPaths, bool bSetupUndo = true, bool bPrintPythonCommand = false)`  
  Adds an override to a given list of pin paths
- `URigVMRerouteNode AddRerouteNodeOnLink(URigVMLink InLink, FVector2D InPosition = FVector2D ( ), FString InNodeName = "", bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`  
  Adds a Reroute Node on an existing Link to the edited Graph.
Reroute Nodes can be used to visually improve the data flow,
they don't require any additional memory though and are purely
cosmetic. This causes a NodeAdded modified event.
- `URigVMRerouteNode AddRerouteNodeOnLinkPath(FString InLinkPinPathRepresentation, FVector2D InPosition = FVector2D ( ), FString InNodeName = "", bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`  
  Adds a Reroute Node on an existing Link to the edited Graph given the Link's string representation.
Reroute Nodes can be used to visually improve the data flow,
they don't require any additional memory though and are purely
cosmetic. This causes a NodeAdded modified event.
- `URigVMRerouteNode AddRerouteNodeOnPin(FString InPinPath, bool bAsInput, FVector2D InPosition = FVector2D ( ), FString InNodeName = "", bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`  
  Adds a Reroute Node on an existing Pin to the editor Graph.
Reroute Nodes can be used to visually improve the data flow,
they don't require any additional memory though and are purely
cosmetic. This causes a NodeAdded modified event.
- `URigVMNode AddSelectNode(FString InCPPType, FName InCPPTypeObjectPath, FVector2D InPosition = FVector2D ( ), FString InNodeName = "", bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`  
  Adds a select node to the graph.
Select nodes can be used to pick between multiple values based on an index.
- `URigVMNode AddSelectNodeFromStruct(UScriptStruct InScriptStruct, FVector2D InPosition = FVector2D ( ), FString InNodeName = "", bool bSetupUndoRedo = true)`
- `bool AddTagToFunctionVariant(FName InFunctionName, FRigVMTag InTag, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`  
  Adds a tag to a function variant
- `URigVMTemplateNode AddTemplateNode(FName InNotation, FVector2D InPosition = FVector2D ( ), FString InNodeName = "", bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`  
  Adds a template node to the graph.
- `FName AddTrait(FName InNodeName, FName InTraitTypeObjectPath, FName InTraitName = NAME_None, FString InDefaultValue = "", int InPinIndex = - 1, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`  
  Adds a trait to a node
- `URigVMUnitNode AddUnitNode(UScriptStruct InScriptStruct, FName InMethodName = FName ( "" ), FVector2D InPosition = FVector2D ( ), FString InNodeName = "", bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`  
  Adds a Function / Struct Node to the edited Graph.
UnitNode represent a RIGVM_METHOD declaration on a USTRUCT.
This causes a NodeAdded modified event.
- `URigVMUnitNode AddUnitNodeFromStructPath(FString InScriptStructPath, FName InMethodName = FName ( "" ), FVector2D InPosition = FVector2D ( ), FString InNodeName = "", bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`  
  Adds a Function / Struct Node to the edited Graph given its struct object path name.
UnitNode represent a RIGVM_METHOD declaration on a USTRUCT.
This causes a NodeAdded modified event.
- `URigVMUnitNode AddUnitNodeWithDefaults(UScriptStruct InScriptStruct, FString InDefaults, FName InMethodName = FName ( "" ), FVector2D InPosition = FVector2D ( ), FString InNodeName = "", bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`  
  Adds a Function / Struct Node to the edited Graph.
UnitNode represent a RIGVM_METHOD declaration on a USTRUCT.
This causes a NodeAdded modified event.
- `URigVMVariableNode AddVariableNode(FName InVariableName, FString InCPPType, UObject InCPPTypeObject, bool bIsGetter, FString InDefaultValue, FVector2D InPosition = FVector2D ( ), FString InNodeName = "", bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`  
  Adds a Variable Node to the edited Graph.
Variables represent local work state for the function and
can be read from and written to.
This causes a NodeAdded modified event.
- `URigVMVariableNode AddVariableNodeFromObjectPath(FName InVariableName, FString InCPPType, FString InCPPTypeObjectPath, bool bIsGetter, FString InDefaultValue, FVector2D InPosition = FVector2D ( ), FString InNodeName = "", bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`  
  Adds a Variable Node to the edited Graph given a struct object path name.
Variables represent local work state for the function and
can be read from (bIsGetter == true) or written to (bIsGetter == false).
This causes a NodeAdded modified event.
- `bool BindPinToVariable(FString InPinPath, FString InNewBoundVariablePath, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`  
  Binds a pin to a variable (or removes the binding given NAME_None)
This causes a PinBoundVariableChanged modified event.
- `bool BreakAllLinks(FString InPinPath, bool bAsInput = true, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`  
  Removes all links on a given pin from the graph.
This might cause multiple LinkRemoved modified event.
- `bool BreakLink(FString InOutputPinPath, FString InInputPinPath, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`  
  Removes a link from the graph.
This causes a LinkRemoved modified event.
- `bool CancelUndoBracket()`  
  Cancels an undo bracket / scoped transaction.
This is primarily useful for Python.
This causes a UndoBracketCanceled modified event.
- `bool CanImportNodesFromText(FString InText)`  
  Exports the given nodes as text
- `bool ChangeExposedPinType(FName InPinName, FString InCPPType, FName InCPPTypeObjectPath, bool& bSetupUndoRedo, bool bSetupOrphanPins = true, bool bPrintPythonCommand = false)`  
  Changes the type of an exposed pin in the graph controlled by this
- `bool ClearArrayPin(FString InArrayPinPath, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`  
  Removes all (but one) array element pin from an array pin.
This causes a PinArraySizeChanged modified event.
- `bool ClearNodeLayout(FName InNodeName, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`  
  Removes any layout information from a node
- `bool ClearNodeSelection(bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`  
  Deselects all currently selected nodes in the graph.
This might cause several NodeDeselected modified event.
- `bool ClearOverrideOnAllPinsOnNode(FName InNodeName, bool bSetupUndo = true, bool bPrintPythonCommand = false)`  
  Clears the overrides for all pins on a node
- `bool ClearOverrideOnAllPinsOnNodes(TArray<FName> InNodeNames, bool bSetupUndo = true, bool bPrintPythonCommand = false)`  
  Clears the overrides for all pins of a list of nodes
- `bool ClearOverrideOnPin(FString InPinPath, bool bSetupUndo = true, bool bPrintPythonCommand = false)`  
  Clears an override on a given pin path
- `bool ClearOverrideOnPins(TArray<FString> InPinPaths, bool bSetupUndo = true, bool bPrintPythonCommand = false)`  
  Clears the overrides on a given list of pin paths
- `bool ClearPinCategory(FString InPinPath, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`  
  Clears the pin category. The category is UI relevant only and used
to order pins in the user interface of the node as well as on the details panel.
- `bool CloseUndoBracket()`  
  Closes an undo bracket / scoped transaction.
This is primarily useful for Python.
This causes a UndoBracketClosed modified event.
- `URigVMCollapseNode CollapseNodes(TArray<FName> InNodeNames, FString InCollapseNodeName = "", bool bSetupUndoRedo = true, bool bPrintPythonCommand = false, bool bIsAggregate = false)`  
  Turns a series of nodes into a Collapse node
- `URigVMLibraryNode CreateFunctionVariant(FName InFunctionName, FName InVariantName = NAME_None, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`  
  Creates a variant of a function given the name of an existing function variant
- `FString DuplicateArrayPin(FString InArrayElementPinPath, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`  
  Duplicates an array element pin.
This causes a PinArraySizeChanged modified event.
- `URigVMNode EjectNodeFromPin(FString InPinPath, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`  
  Ejects the last injected node on a pin
- `EnableReporting(bool bEnabled = true)`  
  Enables or disables the error reporting of this Controller.
- `TArray<URigVMNode> ExpandLibraryNode(FName InNodeName, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`  
  Turns a library node into its contained nodes
- `FString ExportNodesToText(TArray<FName> InNodeNames, bool bIncludeExteriorLinks = false)`  
  Exports the given nodes as text
- `FString ExportNodeToText(const URigVMNode InNode, bool bIncludeExteriorLinks = false)`  
  Exports the given node as text
- `FString ExportSelectedNodesToText(bool bIncludeExteriorLinks = false)`  
  Exports the selected nodes as text
- `FRigVMGraphFunctionHeader FindGraphFunctionHeader(FRigVMGraphFunctionIdentifier InFunctionIdentifier) const`
- `FRigVMGraphFunctionHeader FindGraphFunctionHeaderByName(FString InHostPath, FName InFunctionName) const`
- `FRigVMGraphFunctionIdentifier FindGraphFunctionIdentifier(FString InHostPath, FName InFunctionName) const`
- `TArray<FRigVMVariantRef> FindVariantsOfFunction(FName InFunctionName)`  
  Returns all variant refs related to the given function
- `TArray<FString> GeneratePythonCommands()`
- `URigVMActionStack GetActionStack() const`
- `URigVMController GetControllerForGraph(const URigVMGraph InGraph) const`  
  Returns another controller for a given graph
- `URigVMGraph GetGraph() const`  
  Returns the currently edited Graph of this controller.
- `FString GetPinDefaultValue(FString InPinPath)`  
  Returns the default value of a pin given its pinpath.
- `URigVMSchema GetSchema() const`  
  Returns the schema used by this controller
- `URigVMGraph GetTopLevelGraph() const`  
  Returns the top level graph
- `TArray<FName> ImportNodesFromText(FString InText, bool bSetupUndoRedo = true, bool bPrintPythonCommands = false)`  
  Exports the given nodes as text
- `FString InsertArrayPin(FString InArrayPinPath, int InIndex = - 1, FString InDefaultValue = "", bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`  
  Inserts an array element pin into an array pin.
This causes a PinArraySizeChanged modified event.
- `bool IsFunctionPublic(FName InFunctionName)`  
  Returns true if a function is marked as public in the function library
- `bool IsReportingEnabled() const`  
  Returns true if reporting is enabled
- `bool IsTransacting() const`  
  Returns true if the controller is currently transacting
- `bool JoinFunctionVariant(FName InFunctionName, FGuid InGuid, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`  
  Merges the function's guid with a provided one to join the variant set
- `URigVMLibraryNode LocalizeFunction(FRigVMGraphFunctionIdentifier InFunctionDefinition, bool bLocalizeDependentPrivateFunctions = true, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`
- `URigVMLibraryNode LocalizeFunctionFromPath(FString InHostPath, FName InFunctionName, bool bLocalizeDependentPrivateFunctions = true, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`  
  Copies a function declaration into this graph's local function library
- `TMap<FRigVMGraphFunctionIdentifier,URigVMLibraryNode> LocalizeFunctions(TArray<FRigVMGraphFunctionIdentifier> InFunctionDefinitions, bool bLocalizeDependentPrivateFunctions = true, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`  
  Copies a series of function declaratioms into this graph's local function library
- `bool MakeBindingsFromVariableNode(FName InNodeName, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`  
  Turns a variable node into one or more bindings
- `URigVMUserWorkflowOptions MakeOptionsForWorkflow(UObject InSubject, FRigVMUserWorkflow InWorkflow)`  
  creates the options struct for a given workflow
- `bool MakeVariableNodeFromBinding(FString InPinPath, FVector2D InNodePosition = FVector2D ( ), bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`  
  Turns a binding to a variable node
- `bool MarkFunctionAsPublic(FName InFunctionName, bool bInIsPublic, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`  
  Mark a function as public/private in the function library
- `bool OpenUndoBracket(FString InTitle)`  
  Opens an undo bracket / scoped transaction for
a series of actions to be performed as one step on the
Undo stack. This is primarily useful for Python.
This causes a UndoBracketOpened modified event.
- `bool PerformUserWorkflow(FRigVMUserWorkflow InWorkflow, const URigVMUserWorkflowOptions InOptions, bool bSetupUndoRedo = true)`  
  performs all actions representing the workflow
- `FName PromoteCollapseNodeToFunctionReferenceNode(FName InNodeName, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false, FString InExistingFunctionDefinitionPath = "")`  
  Turns a collapse node into a function node
- `FName PromoteFunctionReferenceNodeToCollapseNode(FName InNodeName, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false, bool bRemoveFunctionDefinition = false)`  
  Turns a collapse node into a function node
- `bool PromotePinToVariable(FString InPinPath, bool bCreateVariableNode, FVector2D InNodePosition = FVector2D ( ), bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`  
  Promotes a pin to a variable
- `bool Redo()`  
  Re-does the last action on the stack.
Note: This should really only be used for unit tests,
use the GEditor's main Undo method instead.
- `RefreshVariableNode(FName InNodeName, FName InVariableName, FString InCPPType, UObject InCPPTypeObject, bool bSetupUndoRedo, bool bSetupOrphanPins = true)`  
  Refreshes the variable node with the new data
- `bool RemoveAggregatePin(FString InPinPath, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`
- `bool RemoveArrayPin(FString InArrayElementPinPath, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`  
  Removes an array element pin from an array pin.
This causes a PinArraySizeChanged modified event.
- `bool RemoveExposedPin(FName InPinName, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`  
  Removes an exposed pin from the graph controlled by this
- `bool RemoveFunctionFromLibrary(FName InFunctionName, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`  
  Removes a function from a function library graph
- `bool RemoveInjectedNode(FString InPinPath, bool bAsInput, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`  
  Removes an injected node
This causes a NodeRemoved modified event.
- `bool RemoveLocalVariable(FName InVariableName, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`  
  Remove a local variable from the graph
- `bool RemoveNode(URigVMNode InNode, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`  
  Removes a node from the graph
This causes a NodeRemoved modified event.
- `bool RemoveNodeByName(FName InNodeName, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`  
  Removes a node from the graph given the node's name.
This causes a NodeRemoved modified event.
- `bool RemoveNodes(TArray<URigVMNode> InNodes, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`  
  Removes a list of nodes from the graph
This causes a NodeRemoved modified event.
- `bool RemoveNodesByName(TArray<FName> InNodeNames, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`  
  Removes a list of nodes from the graph given the names
This causes a NodeRemoved modified event.
- `bool RemovePinCategory(FName InNodeName, FString InPinCategory, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`  
  Removes a pin category. The category is UI relevant only and used
to order pins in the user interface of the node as well as on the details panel.
- `bool RemoveTagFromFunctionVariant(FName InFunctionName, FName InTagName, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`  
  Adds a tag to a function variant
- `bool RemoveTrait(FName InNodeName, FName InTraitName, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`  
  Removes a trait from a node
- `bool RenameExposedPin(FName InOldPinName, FName InNewPinName, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`  
  Renames an exposed pin in the graph controlled by this
- `bool RenameFunction(FName InOldFunctionName, FName InNewFunctionName, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`  
  Renames a function in the function library
- `bool RenameLocalVariable(FName InVariableName, FName InNewVariableName, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`  
  Rename a local variable from the graph
- `bool RenameNode(URigVMNode InNode, FName InNewName, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`  
  Renames a node in the graph
This causes a NodeRenamed modified event.
- `bool RenamePinCategory(FName InNodeName, FString InOldPinCategory, FString InNewPinCategory, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`  
  Renames a pin category. The category is UI relevant only and used
to order pins in the user interface of the node as well as on the details panel.
- `URigVMVariableNode ReplaceParameterNodeWithVariable(FName InNodeName, FName InVariableName, FString InCPPType, UObject InCPPTypeObject, bool bSetupUndoRedo)`  
  Refreshes the variable node with the new data
- `bool ResetDefaultValueForAllPinsOnNode(FName InNodeName, bool bSetupUndo = true, bool bPrintPythonCommand = false)`  
  Resets the default value of all pins of a given node
- `bool ResetDefaultValueForAllPinsOnNodes(TArray<FName> InNodeNames, bool bSetupUndo = true, bool bPrintPythonCommand = false)`  
  Resets the default value of all pins of a list of nodes
- `bool ResetDefaultValueForPins(TArray<FString> InPinPaths, bool bSetupUndo = true, bool bPrintPythonCommand = false)`  
  Resets the default value of a list of pin given the pinpaths.
- `bool ResetPinDefaultValue(FString InPinPath, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`  
  Resets the default value of a pin given its pinpath.
This causes a PinDefaultValueChanged modified event.
- `bool ResolveWildCardPin(FString InPinPath, FString InCPPType, FName InCPPTypeObjectPath, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`  
  Resolves a wildcard pin on any node
- `bool SelectLinkedNodes(TArray<FName> InNodeNames, bool bSelectSourceNodes, bool bClearSelection, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`  
  Selects the linked nodes given the input node names
- `bool SelectNode(URigVMNode InNode, bool bSelect = true, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`  
  Selects a single node in the graph.
This causes a NodeSelected / NodeDeselected modified event.
- `bool SelectNodeByName(FName InNodeName, bool bSelect = true, bool bSetupUndoRedo = true)`  
  Selects a single node in the graph by name.
This causes a NodeSelected / NodeDeselected modified event.
- `bool SelectNodeIslands(TArray<FName> InNodeNames, bool bClearSelection, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`  
  Selects the node islands given the input node names
- `SetActionStack(URigVMActionStack InActionStack)`
- `bool SetArrayPinSize(FString InArrayPinPath, int InSize, FString InDefaultValue = "", bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`  
  Sets the size of the array pin
This causes a PinArraySizeChanged modified event.
- `bool SetCommentText(URigVMNode InNode, FString InCommentText, int InCommentFontSize, bool bInCommentBubbleVisible, bool bInCommentColorBubble, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`  
  Sets the comment text and properties of a comment node in the graph.
This causes a CommentTextChanged modified event.
- `bool SetCommentTextByName(FName InNodeName, FString InCommentText, int InCommentFontSize, bool bInCommentBubbleVisible, bool bInCommentColorBubble, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`  
  Sets the comment text and properties of a comment node in the graph by name.
This causes a CommentTextChanged modified event.
- `bool SetExposedPinIndex(FName InPinName, int InNewIndex, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`  
  Sets the index for an exposed pin. This can be used to move the pin up and down on the node.
- `SetIsRunningUnitTest(bool bIsRunning)`  
  Helper function to disable a series of checks that can be ignored during a unit test
- `bool SetLocalVariableDefaultValue(FName InVariableName, FString InDefaultValue, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`
- `bool SetLocalVariableType(FName InVariableName, FString InCPPType, UObject InCPPTypeObject, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`  
  Sets the type of the local variable
- `bool SetLocalVariableTypeFromObjectPath(FName InVariableName, FString InCPPType, FString InCPPTypeObjectPath, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`
- `bool SetNodeCategory(URigVMCollapseNode InNode, FString InCategory, bool bSetupUndoRedo = true, bool bMergeUndoAction = false, bool bPrintPythonCommand = false)`  
  Sets the category of a node in the graph.
This causes a NodeCategoryChanged modified event.
- `bool SetNodeCategoryByName(FName InNodeName, FString InCategory, bool bSetupUndoRedo = true, bool bMergeUndoAction = false)`  
  Sets the category of a node in the graph.
This causes a NodeCategoryChanged modified event.
- `bool SetNodeColor(URigVMNode InNode, FLinearColor InColor, bool bSetupUndoRedo = true, bool bMergeUndoAction = false, bool bPrintPythonCommand = false)`  
  Sets the color of a node in the graph.
This causes a NodeColorChanged modified event.
- `bool SetNodeColorByName(FName InNodeName, FLinearColor InColor, bool bSetupUndoRedo = true, bool bMergeUndoAction = false)`  
  Sets the color of a node in the graph by name.
This causes a NodeColorChanged modified event.
- `bool SetNodeDescription(URigVMCollapseNode InNode, FString InDescription, bool bSetupUndoRedo = true, bool bMergeUndoAction = false, bool bPrintPythonCommand = false)`  
  Sets the function description of a node in the graph.
This causes a NodeDescriptionChanged modified event.
- `bool SetNodeDescriptionByName(FName InNodeName, FString InDescription, bool bSetupUndoRedo = true, bool bMergeUndoAction = false)`  
  Sets the keywords of a node in the graph.
This causes a NodeDescriptionChanged modified event.
- `bool SetNodeKeywords(URigVMCollapseNode InNode, FString InKeywords, bool bSetupUndoRedo = true, bool bMergeUndoAction = false, bool bPrintPythonCommand = false)`  
  Sets the keywords of a node in the graph.
This causes a NodeKeywordsChanged modified event.
- `bool SetNodeKeywordsByName(FName InNodeName, FString InKeywords, bool bSetupUndoRedo = true, bool bMergeUndoAction = false)`  
  Sets the keywords of a node in the graph.
This causes a NodeKeywordsChanged modified event.
- `bool SetNodeLayout(FName InNodeName, FRigVMNodeLayout InLayout, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`  
  Applies a complete node layout to a node
- `bool SetNodePosition(URigVMNode InNode, FVector2D InPosition, bool bSetupUndoRedo = true, bool bMergeUndoAction = false, bool bPrintPythonCommand = false)`  
  Sets the position of a node in the graph.
This causes a NodePositionChanged modified event.
- `bool SetNodePositionByName(FName InNodeName, FVector2D InPosition, bool bSetupUndoRedo = true, bool bMergeUndoAction = false, bool bPrintPythonCommand = false)`  
  Sets the position of a node in the graph by name.
This causes a NodePositionChanged modified event.
- `bool SetNodeSelection(TArray<FName> InNodeNames, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`  
  Selects the nodes given the selection
This might cause several NodeDeselected modified event.
- `bool SetNodeSize(URigVMNode InNode, FVector2D InSize, bool bSetupUndoRedo = true, bool bMergeUndoAction = false, bool bPrintPythonCommand = false)`  
  Sets the size of a node in the graph.
This causes a NodeSizeChanged modified event.
- `bool SetNodeSizeByName(FName InNodeName, FVector2D InSize, bool bSetupUndoRedo = true, bool bMergeUndoAction = false, bool bPrintPythonCommand = false)`  
  Sets the size of a node in the graph by name.
This causes a NodeSizeChanged modified event.
- `bool SetNodeTitle(URigVMNode InNode, FString InNodeTitle, bool bSetupUndoRedo = true, bool bMergeUndoAction = false, bool bPrintPythonCommand = false)`  
  Sets the raw node title of a node in the graph.
Some nodes generate customs node titles that override this setting.
- `bool SetNodeTitleByName(FName InNodeName, FString InNodeTitle, bool bSetupUndoRedo = true, bool bMergeUndoAction = false)`  
  Sets the raw node title of a node in the graph.
Some nodes generate customs node titles that override this setting.
- `bool SetPinCategory(FString InPinPath, FString InCategory, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`  
  Sets the pin category. The category is UI relevant only and used
to order pins in the user interface of the node as well as on the details panel.
- `bool SetPinCategoryExpansion(FName InNodeName, FString InPinCategory, bool bIsExpanded, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`  
  Changes a pin category's expansion state. The category is UI relevant only and used
to order pins in the user interface of the node as well as on the details panel.
- `bool SetPinCategoryIndex(FName InNodeName, FString InPinCategory, int InNewIndex, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`  
  Changes a pin category's index. The category is UI relevant only and used
to order pins in the user interface of the node as well as on the details panel.
- `bool SetPinDefaultValue(FString InPinPath, FString InDefaultValue, bool bResizeArrays = true, bool bSetupUndoRedo = true, bool bMergeUndoAction = false, bool bPrintPythonCommand = false, bool bSetValueOnLinkedPins = true)`  
  Sets the default value of a pin given its pinpath.
This causes a PinDefaultValueChanged modified event.
- `bool SetPinDisplayName(FString InPinPath, FString InDisplayName, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`  
  Sets the pin display name. The display name is UI relevant only.
- `bool SetPinExpansion(FString InPinPath, bool bIsExpanded, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`  
  Sets the pin to be expanded or not
This causes a PinExpansionChanged modified event.
- `bool SetPinIndexInCategory(FString InPinPath, int InIndexInCategory, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`  
  Changes a pin category's expansion state. The category is UI relevant only and used
to order pins in the user interface of the node as well as on the details panel.
- `bool SetPinIsWatched(FString InPinPath, bool bIsWatched, bool bSetupUndoRedo = true)`  
  Sets the pin to be watched (or not)
This causes a PinWatchedChanged modified event.
- `bool SetRemappedVariable(URigVMFunctionReferenceNode InFunctionRefNode, FName InInnerVariableName, FName InOuterVariableName, bool bSetupUndoRedo = true)`  
  Sets the remapped variable on a function reference node
- `SetSchemaClass(TSubclassOf<URigVMSchema> InSchemaClass)`  
  Sets the schema class on the controller
- `bool SetUnitNodeDefaults(URigVMUnitNode InNode, FString InDefaults, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`  
  Adds a Function / Struct Node to the edited Graph.
UnitNode represent a RIGVM_METHOD declaration on a USTRUCT.
This causes a NodeAdded modified event.
- `bool SplitFunctionVariant(FName InFunctionName, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`  
  Resets the function's guid to a new one and splits it from the former variant set
- `bool SwapAllFunctionReferences(FRigVMGraphFunctionIdentifier InOldFunctionIdentifier, FRigVMGraphFunctionIdentifier InNewFunctionIdentifier, bool bSetupOrphanPins, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`
- `bool SwapFunctionReference(URigVMFunctionReferenceNode InFunctionReferenceNode, FRigVMGraphFunctionIdentifier InNewFunctionIdentifier, bool bSetupOrphanPins, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`
- `bool SwapFunctionReferenceByName(FName InFunctionReferenceNodeName, FRigVMGraphFunctionIdentifier InNewFunctionIdentifier, bool bSetupOrphanPins, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`
- `bool UnbindPinFromVariable(FString InPinPath, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`  
  Removes the binging of a pin to a variable
This causes a PinBoundVariableChanged modified event.
- `bool Undo()`  
  Un-does the last action on the stack.
Note: This should really only be used for unit tests,
use the GEditor's main Undo method instead.
- `bool UnresolveTemplateNodes(TArray<FName> InNodeNames, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`  
  Turns a resolved templated node(s) back into its template.
- `TArray<URigVMNode> UpgradeNodes(TArray<FName> InNodeNames, bool bRecursive = true, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)`  
  Upgrades a set of nodes with each corresponding next known version

---

