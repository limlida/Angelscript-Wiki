### UTaggedAssetBrowserConfiguration


The actual configuration asset. Contains a hierarchy root that lets you add new elements and has drag & drop support via Data Hierarchy Editor.

**属性**:

- `FName ProfileName [Used for saving filter state and various menus. Should be unique. Is also used for extension identification.]`
- `FTaggedAssetBrowserConfigurationData_Standalone StandaloneData []`
- `bool bIsExtension [If this asset is used as extension, the matching standalone configuration asset will dictate what elements you can add.
The ProfileName has to match the standalone asset.]`

---

