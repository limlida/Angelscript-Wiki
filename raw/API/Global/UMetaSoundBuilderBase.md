### UMetaSoundBuilderBase


Base implementation of MetaSound builder

**方法**:

- `FMetaSoundBuilderNodeOutputHandle AddGraphInputNode(FName Name, FName DataType, FMetasoundFrontendLiteral DefaultValue, EMetaSoundBuilderResult& OutResult, bool bIsConstructorInput = false)`  
  Adds a graph input node with the given name, DataType, and sets the graph input to default value.
Returns the new input node's output handle if it was successfully created, or an invalid handle if it failed.
- `FMetaSoundBuilderNodeInputHandle AddGraphOutputNode(FName Name, FName DataType, FMetasoundFrontendLiteral DefaultValue, EMetaSoundBuilderResult& OutResult, bool bIsConstructorOutput = false)`  
  Adds a graph output node with the given name, DataType, and sets output node's input to default value.
Returns the new output node's input handle if it was successfully created, or an invalid handle if it failed.
- `AddGraphVariable(FName Name, FName DataType, FMetasoundFrontendLiteral DefaultValue, EMetaSoundBuilderResult& OutResult)`  
  Adds a graph variable node with the given name, DataType, and sets to default value.
- `FMetaSoundNodeHandle AddGraphVariableGetDelayedNode(FName Name, EMetaSoundBuilderResult& OutResult)`  
  Adds a graph variable node with the given name, DataType, and sets to default value.
- `FMetaSoundNodeHandle AddGraphVariableGetNode(FName Name, EMetaSoundBuilderResult& OutResult)`  
  Adds a graph variable node with the given name, DataType, and sets to default value.
- `FMetaSoundNodeHandle AddGraphVariableSetNode(FName Name, EMetaSoundBuilderResult& OutResult)`  
  Adds a graph variable node with the given name, DataType, and sets to default value.
- `AddInterface(FName InterfaceName, EMetaSoundBuilderResult& OutResult)`  
  Adds an interface registered with the given name to the graph, adding associated input and output nodes.
- `FMetaSoundNodeHandle AddNodeByClassName(FMetasoundFrontendClassName ClassName, EMetaSoundBuilderResult& OutResult, int MajorVersion = 1)`  
  Adds node referencing the highest native class version of the given class name to the document.
Returns a node handle to the created node if successful, or an invalid handle if it failed.
- `ConnectNamedNodeOutputToGraphOutput(FMetaSoundNodeHandle SourceNode, FName NodeOutputName, FMetaSoundBuilderNodeInputHandle GraphOutput, EMetaSoundBuilderResult& OutResult)`  
  Connects a given node's named output to the graph output with the given handle.
- `ConnectNamedNodeOutputToNamedGraphOutput(FMetaSoundNodeHandle SourceNode, FName NodeOutputName, FName GraphOutputName, EMetaSoundBuilderResult& OutResult)`  
  Connects a given node's named output to the graph output with the given name.
- `TArray<FMetaSoundBuilderNodeOutputHandle> ConnectNodeInputsToMatchingGraphInterfaceInputs(FMetaSoundNodeHandle NodeHandle, EMetaSoundBuilderResult& OutResult)`  
  Connects a given node's inputs to all graph inputs for shared interfaces implemented on both the node's referenced class and the builder's MetaSound graph. Returns outputs of connected input nodes.
- `ConnectNodeInputToGraphInput(FName GraphInputName, FMetaSoundBuilderNodeInputHandle NodeInputHandle, EMetaSoundBuilderResult& OutResult)`  
  Connects a given node input to the graph input with the given name.
- `TArray<FMetaSoundBuilderNodeInputHandle> ConnectNodeOutputsToMatchingGraphInterfaceOutputs(FMetaSoundNodeHandle NodeHandle, EMetaSoundBuilderResult& OutResult)`  
  Connects a given node's outputs to all graph outputs for shared interfaces implemented on both the node's referenced class and the builder's MetaSound graph. Returns inputs of connected output nodes.
- `ConnectNodeOutputToGraphOutput(FName GraphOutputName, FMetaSoundBuilderNodeOutputHandle NodeOutputHandle, EMetaSoundBuilderResult& OutResult)`  
  Connects a given node output to the graph output with the given name.
- `ConnectNodes(FMetaSoundBuilderNodeOutputHandle NodeOutputHandle, FMetaSoundBuilderNodeInputHandle NodeInputHandle, EMetaSoundBuilderResult& OutResult)`  
  Connects node output to a node input. Does *NOT* provide loop detection for performance reasons.  Loop detection is checked on class registration when built or played.
Returns succeeded if connection made, failed if connection already exists with input, the data types do not match, or the connection is not supported due to access type
incompatibility (ex. constructor input to non-constructor input).
- `ConnectNodesByInterfaceBindings(FMetaSoundNodeHandle FromNodeHandle, FMetaSoundNodeHandle ToNodeHandle, EMetaSoundBuilderResult& OutResult)`  
  Connects two nodes using defined MetaSound Interface Bindings registered with the MetaSound Interface registry.
- `bool ContainsNode(FMetaSoundNodeHandle Node) const`  
  Returns whether node exists.
- `bool ContainsNodeInput(FMetaSoundBuilderNodeInputHandle Input) const`  
  Returns whether node input exists.
- `bool ContainsNodeOutput(FMetaSoundBuilderNodeOutputHandle Output) const`  
  Returns whether node output exists.
- `ConvertFromPreset(EMetaSoundBuilderResult& OutResult)`  
  Converts this preset to a fully accessible MetaSound; sets result to succeeded if it was converted successfully and failed if it was not.
- `DisconnectNodeInput(FMetaSoundBuilderNodeInputHandle NodeInputHandle, EMetaSoundBuilderResult& OutResult)`  
  Removes connection to a given node input. Returns success if connection was removed, failed if not.
- `DisconnectNodeOutput(FMetaSoundBuilderNodeOutputHandle NodeOutputHandle, EMetaSoundBuilderResult& OutResult)`  
  Removes all connections from a given node output. Returns success if all connections were removed, failed if not.
- `DisconnectNodes(FMetaSoundBuilderNodeOutputHandle NodeOutputHandle, FMetaSoundBuilderNodeInputHandle NodeInputHandle, EMetaSoundBuilderResult& OutResult)`  
  Disconnects node output to a node input. Returns success if connection was removed, failed if not.
- `DisconnectNodesByInterfaceBindings(FMetaSoundNodeHandle FromNodeHandle, FMetaSoundNodeHandle ToNodeHandle, EMetaSoundBuilderResult& OutResult)`  
  Disconnects two nodes using defined MetaSound Interface Bindings registered with the MetaSound Interface registry. Returns success if
all connections were found and removed, failed if any connections were not.
- `FMetaSoundNodeHandle FindGraphInputNode(FName InputName, FName& OutDataType, FMetaSoundBuilderNodeOutputHandle& NodeOutputHandle, EMetaSoundBuilderResult& OutResult)`  
  Returns graph input node by the given name if it exists, or an invalid handle if not found.
- `FMetaSoundNodeHandle FindGraphOutputNode(FName OutputName, FName& OutDataType, FMetaSoundBuilderNodeInputHandle& NodeInputHandle, EMetaSoundBuilderResult& OutResult)`  
  Returns graph output node by the given name if it exists, or an invalid handle if not found.
- `TArray<FMetaSoundNodeHandle> FindInterfaceInputNodes(FName InterfaceName, EMetaSoundBuilderResult& OutResult)`  
  Returns input nodes associated with a given interface.
- `TArray<FMetaSoundNodeHandle> FindInterfaceOutputNodes(FName InterfaceName, EMetaSoundBuilderResult& OutResult)`  
  Returns output nodes associated with a given interface.
- `FMetasoundFrontendVersion FindNodeClassVersion(FMetaSoundNodeHandle NodeHandle, EMetaSoundBuilderResult& OutResult)`  
  Returns output's parent node if the input is valid, otherwise returns invalid node handle.
- `FMetaSoundBuilderNodeInputHandle FindNodeInputByName(FMetaSoundNodeHandle NodeHandle, FName InputName, EMetaSoundBuilderResult& OutResult)`  
  Returns node input by the given name if it exists, or an invalid handle if not found.
- `FMetaSoundNodeHandle FindNodeInputParent(FMetaSoundBuilderNodeInputHandle InputHandle, EMetaSoundBuilderResult& OutResult)`  
  Returns input's parent node if the input is valid, otherwise returns invalid node handle.
- `TArray<FMetaSoundBuilderNodeInputHandle> FindNodeInputs(FMetaSoundNodeHandle NodeHandle, EMetaSoundBuilderResult& OutResult)`  
  Returns all node inputs.
- `TArray<FMetaSoundBuilderNodeInputHandle> FindNodeInputsByDataType(FMetaSoundNodeHandle NodeHandle, EMetaSoundBuilderResult& OutResult, FName DataType)`  
  Returns node inputs by the given DataType (ex. "Audio", "Trigger", "String", "Bool", "Float", "Int32", etc.).
- `FMetaSoundBuilderNodeOutputHandle FindNodeOutputByName(FMetaSoundNodeHandle NodeHandle, FName OutputName, EMetaSoundBuilderResult& OutResult)`  
  Returns node output by the given name.
- `FMetaSoundNodeHandle FindNodeOutputParent(FMetaSoundBuilderNodeOutputHandle OutputHandle, EMetaSoundBuilderResult& OutResult)`  
  Returns output's parent node if the input is valid, otherwise returns invalid node handle.
- `TArray<FMetaSoundBuilderNodeOutputHandle> FindNodeOutputs(FMetaSoundNodeHandle NodeHandle, EMetaSoundBuilderResult& OutResult)`  
  Returns all node outputs.
- `TArray<FMetaSoundBuilderNodeOutputHandle> FindNodeOutputsByDataType(FMetaSoundNodeHandle NodeHandle, EMetaSoundBuilderResult& OutResult, FName DataType)`  
  Returns node outputs by the given DataType (ex. "Audio", "Trigger", "String", "Bool", "Float", "Int32", etc.).
- `FMetasoundFrontendLiteral GetGraphInputDefault(FName InputName, EMetaSoundBuilderResult& OutResult) const`  
  Gets the graph input's default literal value.
- `TArray<FName> GetGraphInputNames(EMetaSoundBuilderResult& OutResult) const`  
  Gets names of all graph inputs.
- `TArray<FName> GetGraphOutputNames(EMetaSoundBuilderResult& OutResult) const`  
  Gets names of all graph outputs.
- `FMetasoundFrontendLiteral GetGraphVariableDefault(FName VariableName, EMetaSoundBuilderResult& OutResult) const`  
  Gets the graph variable's default literal value.
- `FMetasoundFrontendLiteral GetNodeInputClassDefault(FMetaSoundBuilderNodeInputHandle InputHandle, EMetaSoundBuilderResult& OutResult)`  
  Returns node input's class literal value if set, otherwise fails and returns default literal.
- `GetNodeInputData(FMetaSoundBuilderNodeInputHandle InputHandle, FName& Name, FName& DataType, EMetaSoundBuilderResult& OutResult)`  
  Returns node input's data if valid (including things like name and datatype).
- `FMetasoundFrontendLiteral GetNodeInputDefault(FMetaSoundBuilderNodeInputHandle InputHandle, EMetaSoundBuilderResult& OutResult)`  
  Returns node input's literal value if set on graph, otherwise fails and returns default literal.
- `bool GetNodeInputIsConstructorPin(FMetaSoundBuilderNodeInputHandle InputHandle) const`  
  Returns whether the given node input is a constructor pin
- `GetNodeOutputData(FMetaSoundBuilderNodeOutputHandle OutputHandle, FName& Name, FName& DataType, EMetaSoundBuilderResult& OutResult)`  
  Returns node output's data if valid (including things like name and datatype).
- `bool GetNodeOutputIsConstructorPin(FMetaSoundBuilderNodeOutputHandle OutputHandle) const`  
  Returns whether the given node output is a constructor pin
- `UObject GetReferencedPresetAsset() const`  
  Return the parent asset referenced by this preset builder. Returns nullptr if the builder is not a preset.
- `FMetasoundFrontendClassName GetRootGraphClassName() const`  
  Returns the MetaSound asset's graph class name (used by the MetaSound Node Class Registry)
- `bool InterfaceIsDeclared(FName InterfaceName) const`  
  Returns if a given interface is declared.
- `bool IsPreset() const`  
  Returns whether this is a preset.
- `bool NodeInputIsConnected(FMetaSoundBuilderNodeInputHandle InputHandle) const`  
  Returns if a given node input has connections.
- `bool NodeOutputIsConnected(FMetaSoundBuilderNodeOutputHandle OutputHandle) const`  
  Returns if a given node output is connected.
- `bool NodesAreConnected(FMetaSoundBuilderNodeOutputHandle OutputHandle, FMetaSoundBuilderNodeInputHandle InputHandle) const`  
  Returns if a given node output and node input are connected.
- `RemoveGraphInput(FName Name, EMetaSoundBuilderResult& OutResult)`  
  Removes input from all paged graphs if it exists; sets result to succeeded if it was removed and failed if it was not.
- `RemoveGraphOutput(FName Name, EMetaSoundBuilderResult& OutResult)`  
  Removes output from all paged graphs if it exists; sets result to succeeded if it was removed and failed if it was not.
- `RemoveGraphVariable(FName Name, EMetaSoundBuilderResult& OutResult)`  
  Removes graph variable from the current build graph if it exists; sets result to succeeded if it was removed and failed if it was not.
- `RemoveInterface(FName InterfaceName, EMetaSoundBuilderResult& OutResult)`  
  Removes the interface with the given name from the builder's MetaSound. Removes any graph inputs
and outputs associated with the given interface and their respective connections (if any).
- `RemoveNode(FMetaSoundNodeHandle NodeHandle, EMetaSoundBuilderResult& OutResult, bool bRemoveUnusedDependencies = true)`  
  Removes node and any associated connections from the current build graph. (Advanced) Optionally, remove unused dependencies
from the internal dependency list on successful removal of node.
- `RemoveNodeInputDefault(FMetaSoundBuilderNodeInputHandle InputHandle, EMetaSoundBuilderResult& OutResult)`  
  Removes node input literal default if set, reverting the value to be whatever the node class defaults the value to.
Returns success if value was removed, false if not removed (i.e. wasn't set to begin with).
- `RemoveUnusedDependencies()`  
  Removes dependencies in document that are no longer referenced by nodes
- `SetGraphInputAccessType(FName InputName, EMetasoundFrontendVertexAccessType AccessType, EMetaSoundBuilderResult& OutResult)`  
  Disconnects the given graph input's respective template nodes and sets the graph input's AccessType should it not match the current AccessType.
Result succeeds if the AccessType was successfully changed or if the provided AccessType is already the input's current AccessType.
- `SetGraphInputDataType(FName InputName, FName DataType, EMetaSoundBuilderResult& OutResult)`  
  Disconnects the given graph input's respective template nodes and sets the graph input's DataType should it not match the current DataType.
Result succeeds if the DataType was successfully changed or if the provided DataType is already the input's current DataType.
- `SetGraphInputDefault(FName InputName, FMetasoundFrontendLiteral Literal, EMetaSoundBuilderResult& OutResult)`  
  Sets the input node's default value, overriding the default provided by the referenced graph if the graph is a preset.
- `SetGraphInputName(FName InputName, FName NewName, EMetaSoundBuilderResult& OutResult)`  
  Sets the given graph input's name to the new name.
Result succeeds if the name was successfully changed or the new name is the same as the old name, and fails if the given input name doesn't exist.
- `SetGraphOutputAccessType(FName OutputName, EMetasoundFrontendVertexAccessType AccessType, EMetaSoundBuilderResult& OutResult)`  
  Disconnects the given graph output's respective template nodes and sets the graph output's AccessType should it not match the current AccessType.
Result succeeds if the AccessType was successfully changed or if the provided AccessType is already the output's current AccessType.
- `SetGraphOutputDataType(FName OutputName, FName DataType, EMetaSoundBuilderResult& OutResult)`  
  Disconnects the given graph output's respective template nodes and sets the graph output's DataType should it not match the current DataType.
Result succeeds if the DataType was successfully changed or if the provided DataType is already the output's current DataType.
- `SetGraphOutputName(FName OutputName, FName NewName, EMetaSoundBuilderResult& OutResult)`  
  Sets the given graph output's name to the new name.
Result succeeds if the name was successfully changed or the new name is the same as the old name, and fails if the given output name doesn't exist.
- `SetNodeInputDefault(FMetaSoundBuilderNodeInputHandle NodeInputHandle, FMetasoundFrontendLiteral Literal, EMetaSoundBuilderResult& OutResult)`  
  Sets the node's input default value (used if no connection to the given node input is present)

---

