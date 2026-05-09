### FAssetRenameData


**属性**:

- `TWeakObjectPtr<UObject> Asset [Object being renamed]`
- `FString NewName [New package and asset name, new object path will be PackagePath/NewName.NewName]`
- `FString NewPackagePath [New path to package without package name, ie /Game/SubDirectory]`


**方法**:

- `FAssetRenameData& opAssign(FAssetRenameData Other)`

---

