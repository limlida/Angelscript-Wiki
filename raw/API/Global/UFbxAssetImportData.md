### UFbxAssetImportData


Base class for import data and options used when importing any asset from FBX

**属性**:

- `ECoordinateSystemPolicy CoordinateSystemPolicy [Select strategy to map FBX coordinates system to UE coordinates system]`
- `FRotator ImportRotation`
- `FVector ImportTranslation`
- `float32 ImportUniformScale`
- `bool bConvertScene [Convert the scene from FBX coordinate system to UE coordinate system]`
- `bool bConvertSceneUnit [Convert the scene from FBX unit to UE unit (centimeter).]`
- `bool bForceFrontXAxis [Convert the scene from FBX coordinate system to UE coordinate system with front X axis instead of -Y]`

---

