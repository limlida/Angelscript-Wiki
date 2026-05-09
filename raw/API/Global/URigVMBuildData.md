### URigVMBuildData


The Build Data is used to store transient / intermediate build information
for the RigVM graph to improve the user experience.
This object is never serialized.

**方法**:

- `FRigVMVariantRef CreateAssetVariant(FAssetData InAssetData, FName InName = NAME_None)`  
  Creates a new variant of an asset
- `FRigVMVariantRef CreateFunctionVariant(FRigVMGraphFunctionIdentifier InFunctionIdentifier, FName InName = NAME_None)`  
  Creates a new variant of a graph function within the same asset
- `TArray<FRigVMVariantRef> FindAssetVariantRefs(FGuid InGuid) const`  
  Will find all the asset variants matching the given variant guid
- `TArray<FRigVMVariantRef> FindFunctionVariantRefs(FGuid InGuid) const`  
  Will find all the function variants matching the given variant guid
- `TArray<FRigVMVariantRef> GatherAllAssetVariantRefs() const`  
  Will find all asset variant refs
- `TArray<FRigVMVariantRef> GatherAllFunctionVariantRefs() const`  
  Will find all public function variant refs, and private function variant refs from loaded assets
- `TArray<FRigVMVariantRef> GatherFunctionVariantRefsForAsset(FAssetData InAssetData) const`  
  Will find the public function variant refs inside this asset, and private function variant refs if the asset is loaded
- `TArray<FRigVMGraphFunctionIdentifier> GetAllFunctionIdentifiers(bool bOnlyPublic = true) const`  
  Returns all known public function identifiers used in the project
- `FAssetData GetAssetDataForPath(FSoftObjectPath InObjectPath) const`  
  Returns the asset data given an object path
- `FAssetData GetAssetDataForVariant(FRigVMVariantRef InVariantRef) const`  
  Returns the asset data given a variant reference
- `FRigVMGraphFunctionIdentifier GetFunctionIdentifierForVariant(FRigVMVariantRef InVariantRef) const`  
  Returns the function identifier given a variant reference
- `TArray<FRigVMGraphFunctionIdentifier> GetUsedFunctionIdentifiers(bool bOnlyPublic = true) const`  
  Returns all known public function identifiers used in the project
- `FRigVMVariantRef GetVariantRefForAsset(FAssetData InAssetData) const`  
  Returns the asset data given a variant reference
- `FRigVMVariantRef JoinVariantSet(FRigVMVariantRef InVariantRef, FGuid InGuid)`  
  Joins a variant with another variant's set
- `FRigVMVariantRef SplitVariantFromSet(FRigVMVariantRef InVariantRef)`  
  Splits a variant from its variant set (by assigning a new, unique guid

---

