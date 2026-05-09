### UGameDataMap


游戏中所有表格的索引表
DataAsset中的资源引用采用TSoftObjectPtr,加载时不默认加载。

**属性**:

- `TMap<FName,TSoftObjectPtr<UDataAsset>> LoadDataAssetWhenEnterLevel`
- `TMap<FName,TSoftObjectPtr<UDataTable>> LoadDataTableWhenEnterLevel`

---

