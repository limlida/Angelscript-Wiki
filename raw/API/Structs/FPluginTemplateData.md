### FPluginTemplateData


* Data for specifying a usable plugin template.
*      -Plugin templates are a folder/file structure that are duplicated and renamed
*       by the plugin creation wizard to easily create new plugins with a standard
*       format.
* See PluginUtils.h for more information.

**属性**:

- `TSubclassOf<UGameFeatureData> DefaultGameFeatureDataClass [The default class of game feature data to create for new game feature plugins (if not set, UGameFeatureData will be used)]`
- `FString DefaultGameFeatureDataName [The default name of the created game feature data assets. If empty, will use the plugin name.]`
- `FString DefaultPluginName [Optional plugin name to default the new plugin to.]`
- `FString DefaultSubfolder [Optional sub folder that new plugins will be created in.]`
- `FText Description []`
- `FText Label []`
- `FDirectoryPath Path []`
- `bool bIsEnabledByDefault [If true, the created plugin will be enabled by default without needing to be added to the project file.]`


**方法**:

- `FPluginTemplateData& opAssign(FPluginTemplateData Other)`

---

