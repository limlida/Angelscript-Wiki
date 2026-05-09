### FARPDomainDefinitionForMatchingPlugins


**属性**:

- `TArray<FString> CanReferenceTheseDomains [The list of additional domains always visible from a plugin
(EngineContent is always visible, as is content from other plugins that are explicitly referenced)]`
- `FText DisplayName [The display name of this rule (used in error message when attempting to reference content incorrectly)
The token {0} will be replaced with the plugin name]`
- `FText ErrorMessageIfUsedElsewhere [The error message if something that is not allowed to attempts to reference content from this domain]`
- `EARPPluginMatchMode MatchRule [Type of matching for this rule]`
- `FString PluginCategoryPrefix [If set, a plugin with a matching Category will match this rule]`
- `FString PluginPathPrefix [If set, a plugin with the same rooted directory path will match this rule
(use "/FirstFolder/SecondFolder/" to match a plugin like $YourProjectDir/Plugins/FirstFolder/SecondFolder/MyCoolPlugin/MyCoolPlugin.uplugin)]`


**方法**:

- `FARPDomainDefinitionForMatchingPlugins& opAssign(FARPDomainDefinitionForMatchingPlugins Other)`

---

