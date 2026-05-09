### FMetaHumanAssetDescription


Description of a MetaHuman asset including verification status

**属性**:

- `FAssetData AssetData [The FAssetData describing the Root Asset]`
- `EMetaHumanAssetType AssetType [The asset type, i.e. Groom, Clothing, etc.]`
- `TArray<FName> DependentPackages [A list of all the packages included in the asset]`
- `FMetaHumanAggregateDetails Details`
- `FName Name [The display name for the Asset. Normally the name of the Root Asset.]`
- `int TotalSize [The total size of all assets]`
- `UMetaHumanAssetReport VerificationReport [If present, the verification report for this Asset]`


**方法**:

- `FMetaHumanAssetDescription& opAssign(FMetaHumanAssetDescription Other)`

---

