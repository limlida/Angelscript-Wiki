### UOptimusNodeGraph


**属性**:

- `EOptimusNodeGraphType GraphType [The type of graph this represents.]`


**方法**:

- `UOptimusNode AddCommentNode(FVector2D InPosition, FVector2D InSize, FLinearColor InColor)`
- `UOptimusNode AddComponentBindingGetNode(UOptimusComponentSourceBinding InComponentBinding, FVector2D InPosition)`
- `UOptimusNode AddDataInterfaceNode(TSubclassOf<UOptimusComputeDataInterface> InDataInterfaceClass, FVector2D InPosition)`
- `UOptimusNode AddFunctionReferenceNode(UOptimusFunctionNodeGraph InFunctionGraph, FVector2D InPosition)`
- `bool AddLink(UOptimusNodePin InNodeOutputPin, UOptimusNodePin InNodeInputPin)`
- `TArray<UOptimusNode> AddLoopTerminalNodes(FVector2D InPosition)`
- `UOptimusNode AddNode(TSubclassOf<UOptimusNode> InNodeClass, FVector2D InPosition)`  
  TODO: Add magic connection from a pin.
- `UOptimusNode AddResourceGetNode(UOptimusResourceDescription InResourceDesc, FVector2D InPosition)`
- `UOptimusNode AddResourceNode(UOptimusResourceDescription InResourceDesc, FVector2D InPosition)`
- `UOptimusNode AddResourceSetNode(UOptimusResourceDescription InResourceDesc, FVector2D InPosition)`
- `UOptimusNode AddValueNode(FOptimusDataTypeRef InDataTypeRef, FVector2D InPosition)`
- `UOptimusNode AddVariableGetNode(UOptimusVariableDescription InVariableDesc, FVector2D InPosition)`
- `UOptimusNode CollapseNodesToFunction(TArray<UOptimusNode> InNodes)`  
  Take a set of nodes and collapse them into a single function, replacing the given nodes
with the new function node and returning it. A new function definition is made available
as a new Function graph in the package.
- `UOptimusNode CollapseNodesToSubGraph(TArray<UOptimusNode> InNodes)`  
  Take a set of nodes and collapse them into a subgraph, replacing the given nodes
with a new subgraph node and returning it.
- `UOptimusNode ConvertCustomKernelToFunction(UOptimusNode InCustomKernel)`  
  Takes a custom kernel and converts to a packaged function. If the given node is not a
custom kernel or cannot be converted, a nullptr is returned.
- `UOptimusNode ConvertFunctionToCustomKernel(UOptimusNode InKernelFunction)`  
  Takes a kernel function and unpackages to a custom kernel. If the given node is not a
kernel function or cannot be converted, a nullptr is returned.
- `bool ConvertToFunction(UOptimusNode InSubGraphNode)`  
  Take a subgraph node convert it to a function in-place
- `bool ConvertToSubGraph(UOptimusNode InFunctionNode)`  
  Take a function node convert it to a subgraph node in-place
- `UOptimusNode DuplicateNode(UOptimusNode InNode, FVector2D InPosition)`
- `bool DuplicateNodes(TArray<UOptimusNode> InNodes, FVector2D InPosition)`  
  Duplicate a collection of nodes from the same graph, using the InPosition position
to be the top-left origin of the pasted nodes.
- `TArray<UOptimusNode> ExpandCollapsedNodes(UOptimusNode InGraphReferenceNode)`  
  Take a function or subgraph node and expand it in-place, replacing the given function
node. The function definition still remains, if a function node was expanded. If a
sub-graph was expanded, the sub-graph is deleted.
- `int GetGraphIndex() const`
- `TArray<UOptimusNodeGraph> GetGraphs() const`
- `EOptimusNodeGraphType GetGraphType() const`
- `bool IsCustomKernel(UOptimusNode InNode) const`  
  Returns true if the node in question is a custom kernel node that can be converted to
a kernel function with ConvertCustomKernelToFunction.
- `bool IsExecutionGraph() const`
- `bool IsFunctionGraph() const`
- `bool IsFunctionReference(UOptimusNode InNode) const`  
  Returns true if the node in question is a function reference node that can be expanded
into a group of nodes using ExpandFunctionToNodes.
- `bool IsKernelFunction(UOptimusNode InNode) const`  
  Returns true if the node in question is a kernel function node that can be converted to
a custom kernel using ConvertFunctionToCustomKernel.
- `bool IsSubGraphReference(UOptimusNode InNode) const`  
  Returns true if the node in question is a function sub-graph node that can be expanded
into a group of nodes using ExpandFunctionToNodes.
- `bool MoveGraphDirect(UOptimusNodeGraph InGraph, int InInsertBefore)`
- `bool RemoveAllLinks(UOptimusNodePin InNodePin)`  
  @brief Removes all links to the given pin, whether it's an input or an output pin.
- `bool RemoveLink(UOptimusNodePin InNodeOutputPin, UOptimusNodePin InNodeInputPin)`  
  @brief Removes a single link between two nodes.
FIXME: Use UOptimusNodeLink instead.
- `bool RemoveNode(UOptimusNode InNode)`
- `bool RemoveNodes(TArray<UOptimusNode> InNodes)`
- `bool RenameGraph(UOptimusNodeGraph InGraph, FString InNewName)`
- `bool RenameGraphDirect(UOptimusNodeGraph InGraph, FString InNewName)`

---

