### UAssetReferencingPolicySettings


Settings for the Asset Referencing Policy, these settings are used to determine which plugins and game folders can reference content from each other

**属性**:

- `TArray<FARPDomainDefinitionByContentRoot> AdditionalDomains [List of additional domains to carve out from the project content folder]`
- `FARPDefaultProjectDomainRules DefaultProjectContentRule [The default rules for project content (if a more specific rule doesn't apply)]`
- `FARPDomainSettingsForPlugins EnginePlugins [Settings/rules for engine plugins]`
- `FARPDomainSettingsForPlugins ProjectPlugins [Settings/rules for project plugins]`
- `bool bIgnoreEditorOnlyReferences [If true, ignore any editor-only domain references that will not affect the cooked game]`

---

