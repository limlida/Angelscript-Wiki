### UInterchangeSkeletonFactoryNode


**方法**:

- `bool GetCustomRootJointUid(FString& AttributeValue) const`  
  Return false if the attribute was not set previously.
- `bool GetCustomSkeletalMeshFactoryNodeUid(FString& AttributeValue) const`
- `bool GetCustomUseTimeZeroForBindPose(bool& AttributeValue) const`  
  Query whether this skeleton should replace joint transforms with time-zero evaluation instead of bind pose.
- `InitializeSkeletonNode(FString UniqueID, FString DisplayLabel, FString InAssetClass, UInterchangeBaseNodeContainer NodeContainer)`  
  Initialize node data.
@param: UniqueID - The unique ID for this node.
@param DisplayLabel - The name of the node.
@param InAssetClass - The class the Skeleton factory will create for this node.
- `bool SetCustomRootJointUid(FString AttributeValue)`
- `bool SetCustomSkeletalMeshFactoryNodeUid(FString AttributeValue)`
- `bool SetCustomUseTimeZeroForBindPose(bool AttributeValue)`  
  If AttributeValue is true, force this skeleton to use time-zero evaluation instead of its bind pose.

---

