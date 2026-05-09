### UInterchangeBaseNodeContainer


The Interchange UInterchangeBaseNode graph is a format used to feed factories and writers when they import, reimport, and
export an asset or scene.

This container holds a flat list of all nodes that have been translated from the source data.
Translators fill this container, and the import/export managers read it to execute the import/export process.

**方法**:

- `FString AddNode(UInterchangeBaseNode Node)`  
  Add a node to the container. The node is added into a TMap.

@param Node - a pointer on the node you want to add
@return: return the node unique ID of the added item. If the node already exist it will return the existing ID. Return InvalidNodeUid if the node cannot be added.
- `bool ClearNodeParentUid(FString NodeUniqueID)`  
  Remove the node's ParentUid, making it into a top-level node
- `ComputeChildrenCache()`  
  Fill the cache of children UIDs to optimize the GetNodeChildrenUids call.
- `UInterchangeFactoryBaseNode GetFactoryNode(FString NodeUniqueID) const`  
  Get a factory node pointer.
- `bool GetIsAncestor(FString NodeUniqueID, FString AncestorUID) const`  
  Checks if ParentNodeUID is an ancestor.
- `const UInterchangeBaseNode GetNode(FString NodeUniqueID) const`  
  Get a node pointer. Once added to the container, nodes are considered const.
- `UInterchangeBaseNode GetNodeChildren(FString NodeUniqueID, int ChildIndex)`  
  Get the nth const child of the node
- `int GetNodeChildrenCount(FString NodeUniqueID) const`  
  Get the number of children the node has.
- `TArray<FString> GetNodeChildrenUids(FString NodeUniqueID) const`  
  Get the UIDs of all the node's children.
- `GetNodes(const UClass ClassNode, TArray<FString>& OutNodes) const`  
  Return all nodes that are of the ClassNode type.
- `GetRoots(TArray<FString>& RootNodes) const`  
  Return all nodes that do not have any parent.
- `bool IsNodeUidValid(FString NodeUniqueID) const`  
  Return true if the node unique ID exists in the container.
- `LoadFromFile(FString Filename)`  
  Serialize the node container from the specified file.
- `RemoveNode(FString NodeUniqueID)`  
  Removes node from Nodes map with the given NodeUniqueID.
- `ReplaceNode(FString NodeUniqueID, UInterchangeFactoryBaseNode NewNode)`
- `Reset()`  
  Empty the container.
- `ResetChildrenCache()`  
  Reset the cache of children UIDs.
- `SaveToFile(FString Filename)`  
  Serialize the node container into the specified file.
- `SetNamespace(FString Namespace, UClass TargetClass)`  
  Set a namespace to all node of the target class in this container. A valid node namespace is prefix to the unique ID in UInterchangeBaseNode::GetUniqueId().
After adding the namespace this function will find any string attribute in all the node that reference the node unique ID and replace the attribute value with the new unique id.
The last step is to remap the node container with the new Ids.

@Param Namespace - Is the new namespace you want to set. Pass an empty string to remove an existing namespace.
@Param TargetClass - Optional, this parameter represent the node class we want to apply the namespace on. If null all node will be tagged with the namespace

@Note - Changing all node namespace wont work since some node class use a combinaison of the unique ID in there attributes and we cannot change those attribute
        in a generic way.
- `bool SetNodeDesiredChildIndex(FString NodeUniqueID, int NewNodeDesiredChildIndex)`  
  Set the desired child index of the node.
- `bool SetNodeParentUid(FString NodeUniqueID, FString NewParentNodeUid)`  
  Set the ParentUid of the node.

---

