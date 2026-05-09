### UPluginMetadataObject


We use this object to display plugin properties using details view.

**属性**:

- `FString Category [The category that this plugin belongs to]`
- `FString CreatedBy [The company or individual who created this plugin.  This is an optional field that may be displayed in the user interface.]`
- `FString CreatedByURL [Hyperlink URL string for the company or individual who created this plugin.  This is optional.]`
- `FString Description [Description of the plugin]`
- `TArray<FPluginDisallowedMetadata> DisallowedPlugins [Plugins that cannot be used by this plugin]`
- `FString DocsURL [Documentation URL string.]`
- `FString EditorCustomVirtualPath [Optional custom virtual path to display in editor to better organize. Inserted just before this plugin's directory in the path: /All/Plugins/EditorCustomVirtualPath/PluginName]`
- `FString FriendlyName [Friendly name of the plugin]`
- `FString MarketplaceURL [Marketplace URL string.]`
- `TArray<FPluginReferenceMetadata> Plugins [Plugins used by this plugin]`
- `FString SupportURL [Support URL/email for this plugin. Email addresses must be prefixed with 'mailto:']`
- `FString VersionName [Name of the version for this plugin.  This is the front-facing part of the version number.  It doesn't need to match
      the version number numerically, but should be updated when the version number is increased accordingly.]`
- `bool bCanContainContent [Can this plugin contain content?]`
- `bool bIsBetaVersion [Marks the plugin as beta in the UI]`
- `bool bIsSealed [If true, prevents other plugins from depending on this plugin]`
- `bool bNoCode []`

---

