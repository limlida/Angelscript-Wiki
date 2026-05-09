### FMigrationOptions


**属性**:

- `EAssetMigrationConflict AssetConflict [What to do when Assets are conflicting on the destination]`
- `FString OrphanFolder [Destination for assets that don't have a corresponding content folder. If left empty those assets are not migrated. (Not used by the new migration)]`
- `bool bIgnoreDependencies [Ignore dependencies of assets, only migrate the given assets. usefull for automation. This will not migrate the actors of a OFPA (one file per actor) level]`
- `bool bPrompt [Prompt user for confirmation (always false through scripting)]`


**方法**:

- `FMigrationOptions& opAssign(FMigrationOptions Other)`

---

