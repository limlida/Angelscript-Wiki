### FLocalizationExportingSettings


**属性**:

- `ELocalizedTextCollapseMode CollapseMode [How should we collapse down text when exporting to PO?]`
- `EPortableObjectFormat POFormat [Which format of PO file should we use?]`
- `bool ShouldAddSourceLocationsAsComments [Should source locations be added to PO file entries as comments? Useful if a third party service doesn't expose PO file reference comments, which typically store the source location.]`
- `bool ShouldPersistCommentsOnExport [Should user comments in existing PO files be persisted after export? Useful if using a third party service that stores editor/translator notes in the PO format's comment fields.]`


**方法**:

- `FLocalizationExportingSettings& opAssign(FLocalizationExportingSettings Other)`

---

