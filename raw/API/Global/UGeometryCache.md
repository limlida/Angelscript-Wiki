### UGeometryCache


A Geometry Cache is a piece/set of geometry that consists of individual Mesh/Transformation samples.
In contrast with Static Meshes they can have their vertices animated in certain ways. *

**属性**:

- `UAssetImportData AssetImportData [Importing data and options used for this Geometry cache object]`
- `TArray<TObjectPtr<UAssetUserData>> AssetUserData [Array of user data stored with the asset]`
- `int EndFrame []`
- `TArray<FName> MaterialSlotNames`
- `TArray<TObjectPtr<UMaterialInterface>> Materials`
- `int StartFrame []`
- `UThumbnailInfo ThumbnailInfo [Information for thumbnail rendering]`

---

