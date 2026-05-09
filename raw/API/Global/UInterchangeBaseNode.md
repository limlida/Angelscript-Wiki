### UInterchangeBaseNode


This struct is used to store and retrieve key-value attributes. The attributes are stored in a generic FAttributeStorage that serializes the values in a TArray64<uint8>.
See UE::Interchange::EAttributeTypes to know the supported template types.
This is an abstract class. This is the base class of the interchange node graph format; all classes in this format should derive from this class.

**方法**:

- `bool AddBooleanAttribute(FString NodeAttributeKey, bool Value)`  
  Add a Boolean attribute to this node. Returns false if the attribute does not exist or if it cannot be added.
- `bool AddDoubleAttribute(FString NodeAttributeKey, float Value)`  
  Add a double attribute to this node. Returns false if the attribute does not exist or if it cannot be added.
- `bool AddFloatAttribute(FString NodeAttributeKey, float32 Value)`  
  Add a float attribute to this node. Returns false if the attribute does not exist or if it cannot be added.
- `bool AddGuidAttribute(FString NodeAttributeKey, FGuid Value)`  
  Add a GUID attribute to this node. Returns false if the attribute does not exist or if it cannot be added.
- `bool AddInt32Attribute(FString NodeAttributeKey, int Value)`  
  Add a int32 attribute to this node. Returns false if the attribute does not exist or if it cannot be added.
- `bool AddLinearColorAttribute(FString NodeAttributeKey, FLinearColor Value)`  
  Add an FLinearColor attribute to this node. Returns false if the attribute does not exist or if it cannot be added.
- `bool AddStringAttribute(FString NodeAttributeKey, FString Value)`  
  Add a string attribute to this node. Returns false if the attribute does not exist or if it cannot be added.
- `bool AddTargetNodeUid(FString AssetUid) const`  
  Add an asset node UID relating to this object.
- `bool AddVector2Attribute(FString NodeAttributeKey, FVector2f Value)`  
  Add a Vector2 attribute to this node. Returns false if the attribute does not exist or if it cannot be added.
- `FString GetAssetName() const`  
  Optional. Any node that can import or export an asset should set the desired name for the asset.
If the attribute was never set, returns GetDisplayLabel().
- `bool GetBooleanAttribute(FString NodeAttributeKey, bool& OutValue) const`  
  Get a Boolean attribute from this node. Returns false if the attribute does not exist.
- `int GetDesiredChildIndex() const`  
  Return the desired child index. If the attribute do not exist it will return INDEX_NONE.
The interchange node container will use this to re-order children if attribute are specified.

Use UInterchangeBaseNodeContainer::SetNodeDesiredChildIndex function to set this node child index. This will ensure the container cache is always in sync
- `FString GetDisplayLabel() const`  
  Return the display label.
- `bool GetDoubleAttribute(FString NodeAttributeKey, float& OutValue) const`  
  Get a double attribute from this node. Returns false if the attribute does not exist.
- `bool GetFloatAttribute(FString NodeAttributeKey, float32& OutValue) const`  
  Get a float attribute from this node. Returns false if the attribute does not exist.
- `bool GetGuidAttribute(FString NodeAttributeKey, FGuid& OutValue) const`  
  Get a GUID attribute from this node. Returns false if the attribute does not exist.
- `FName GetIconName() const`  
  Icon name, used to retrieve the brush when we display the node in any UI.
- `bool GetInt32Attribute(FString NodeAttributeKey, int& OutValue) const`  
  Get a int32 attribute from this node. Returns false if the attribute does not exist.
- `bool GetLinearColorAttribute(FString NodeAttributeKey, FLinearColor& OutValue) const`  
  Get an FLinearColor attribute from this node. Returns false if the attribute does not exist.
- `bool GetNamespace(FString& Namespace) const`  
  Namespace is a prefix added when calling GetUniqueId().
If the attribute exist it will fill Namespace and return true.
If the attribute do not exist, it will not touch OutNamespace and return false.
- `EInterchangeNodeContainerType GetNodeContainerType() const`  
  Return the node container type that defines the purpose of the node (factory node, translated scene node, or translated asset node).
- `FString GetParentUid() const`  
  Return the parent unique ID. If the attribute does not exist, returns InvalidNodeUid().

Use UInterchangeBaseNodeContainer::SetNodeParentUid function to create a parent hierarchy. This will ensure the container cache is always in sync
It's suggested to use SetupNode (that will Iintialize, Add to container and setup the Parent hierarchy as well).
- `bool GetStringAttribute(FString NodeAttributeKey, FString& OutValue) const`  
  Get a string attribute from this node. Returns false if the attribute does not exist.
- `int GetTargetNodeCount() const`  
  Get the number of target assets relating to this object.
- `GetTargetNodeUids(TArray<FString>& OutTargetAssets) const`  
  Get the target assets relating to this object.
- `FString GetTypeName() const`  
  Return the node type name of the class. This is used when reporting errors.
- `FString GetUniqueID() const`  
  Return the unique ID passed in the constructor.
- `bool GetVector2Attribute(FString NodeAttributeKey, FVector2f& OutValue) const`  
  Get a Vector2 attribute from this node. Returns false if the attribute does not exist.
- `InitializeNode(FString UniqueID, FString DisplayLabel, EInterchangeNodeContainerType NodeContainerType)`  
  Initialize the base data of the node.
@param UniqueID - The unique ID for this node.
@param DisplayLabel - The name of the node.
If the Node to initialize also will get a Parent, then the UInterchangeBaseNodeContainer's SetupNode is better suited.
- `bool IsEnabled() const`  
  If true, the node is imported or exported. If false, it is discarded.
Returns false if the node was disabled. Returns true if the attribute is not there or if it was enabled.
- `bool RemoveAttribute(FString NodeAttributeKey)`  
  Remove the specified attribute from this node. Returns false if it could not be removed. If the attribute does not exist, returns true.
- `bool RemoveTargetNodeUid(FString AssetUid) const`  
  Remove an asset node UID relating to this object.
- `bool SetAssetName(FString AssetName)`  
  Set the name for the imported asset this node represents. The asset factory will call GetAssetName().
- `bool SetDisplayLabel(FString InDisplayLabel)`  
  Change the display label.
@param InDisplayLabel - Desired display label text. Sanitized to "Null" if empty or if equals "None".
- `bool SetEnabled(bool bIsEnabled)`  
  Determine whether this node should be part of the import or export process.
@param bIsEnabled - If true, this node is imported or exported. If false, it is discarded.
@return true if the attribute was set, or false otherwise.

---

