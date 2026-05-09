### URigVMGraph


The Graph represents a Function definition
using Nodes as statements.
Graphs can be compiled into a URigVM using the
FRigVMCompiler.
Graphs provide access to its Nodes, Pins and
Links.

**方法**:

- `bool ContainsLink(FString InPinPathRepresentation) const`  
  Returns true if the graph contains a link given its string representation
- `URigVMLink FindLink(FString InLinkPinPathRepresentation) const`  
  Returns a link given its string representation,
for example "NodeA.Color.R -> NodeB.Translation.X"
- `URigVMNode FindNode(FString InNodePath) const`  
  Returns a Node given its path (or nullptr).
(for now this is the same as finding a node by its name.)
- `URigVMNode FindNodeByName(FName InNodeName) const`  
  Returns a Node given its name (or nullptr).
- `URigVMPin FindPin(FString InPinPath) const`  
  Returns a Pin given its path, for example "Node.Color.R".
- `TArray<URigVMGraph> GetContainedGraphs(bool bRecursive = false) const`  
  Returns all of the contained graphs
- `URigVMFunctionLibrary GetDefaultFunctionLibrary() const`  
  Returns the locally available function library
- `URigVMFunctionEntryNode GetEntryNode() const`  
  Returns the entry node of this graph
- `TArray<FName> GetEventNames() const`  
  Returns array of event names
- `int GetGraphDepth() const`  
  Returns the root / top level parent graph of this graph (or this if it is the root graph)
- `FString GetGraphName() const`  
  Returns the name of this graph (as defined by the node path)
- `TArray<FRigVMGraphVariableDescription> GetInputArguments() const`  
  Returns the input arguments of this graph
- `TArray<URigVMLink> GetLinks() const`  
  Returns all of the Links within this Graph.
- `TArray<FRigVMGraphVariableDescription> GetLocalVariables(bool bIncludeInputArguments = false) const`  
  Returns the local variables of this function
- `FString GetNodePath() const`  
  Returns the path of this graph as defined by its invoking nodes
- `TArray<URigVMNode> GetNodes() const`  
  Returns all of the Nodes within this Graph.
- `TArray<FRigVMGraphVariableDescription> GetOutputArguments() const`  
  Returns the output arguments of this graph
- `URigVMGraph GetParentGraph() const`  
  Returns the parent graph of this graph
- `URigVMFunctionReturnNode GetReturnNode() const`  
  Returns the return node of this graph
- `URigVMGraph GetRootGraph() const`  
  Returns the root / top level parent graph of this graph (or this if it is the root graph)
- `URigVMSchema GetSchema() const`  
  Returns the schema used by this graph
- `TSubclassOf<URigVMSchema> GetSchemaClass() const`  
  Returns the schema class used by this graph
- `TArray<FName> GetSelectNodes() const`  
  Returns the names of all currently selected Nodes.
- `TArray<FRigVMGraphVariableDescription> GetVariableDescriptions() const`  
  Returns a list of unique Variable descriptions within this Graph.
Multiple Variable Nodes can share the same description.
- `bool IsNodeHighlighted(FName InNodeName) const`  
  Returns true if a node matches the currently selected subset
- `bool IsNodeSelected(FName InNodeName) const`  
  Returns true if a Node with a given name is selected.
- `bool IsRootGraph() const`  
  Returns true if this graph is a root / top level graph
- `bool IsTopLevelGraph() const`  
  Returns true if this graph is the top level graph
- `SetDefaultFunctionLibrary(URigVMFunctionLibrary InFunctionLibrary)`
- `SetSchemaClass(TSubclassOf<URigVMSchema> InSchemaClass)`  
  Sets the schema class on the graph

---

