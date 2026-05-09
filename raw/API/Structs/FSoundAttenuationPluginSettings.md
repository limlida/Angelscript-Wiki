### FSoundAttenuationPluginSettings


**属性**:

- `TArray<TObjectPtr<UOcclusionPluginSourceSettingsBase>> OcclusionPluginSettingsArray [Settings to use with occlusion audio plugin. These are defined by the plugin creator. Not all audio plugins utilize this feature. This is an array so multiple plugins can have settings.]`
- `TArray<TObjectPtr<UReverbPluginSourceSettingsBase>> ReverbPluginSettingsArray [Settings to use with reverb audio plugin. These are defined by the plugin creator. Not all audio plugins utilize this feature. This is an array so multiple plugins can have settings.]`
- `TArray<TObjectPtr<USourceDataOverridePluginSourceSettingsBase>> SourceDataOverridePluginSettingsArray [Settings to use with source data override audio plugin. These are defined by the plugin creator. Not all audio plugins utilize this feature. This is an array so multiple plugins can have settings.]`
- `TArray<TObjectPtr<USpatializationPluginSourceSettingsBase>> SpatializationPluginSettingsArray [Settings to use with spatialization audio plugin. These are defined by the plugin creator. Not all audio plugins utilize this feature. This is an array so multiple plugins can have settings.]`


**方法**:

- `FSoundAttenuationPluginSettings& opAssign(FSoundAttenuationPluginSettings Other)`

---

