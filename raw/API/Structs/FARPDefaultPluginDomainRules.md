### FARPDefaultPluginDomainRules


**属性**:

- `TArray<FString> CanReferenceTheseDomains [The list of additional domains always visible from a plugin
(EngineContent is always visible, as is content from other plugins that are explicitly referenced)]`
- `bool bCanBeSeenByOtherDomainsWithoutDependency [Can content in other domains access plugin content automatically (for plugins that don't match a specific rule)?
Note: This rule may be deprecated in the future!]`
- `bool bCanProjectAccessThesePlugins [Can content in the ProjectContent domain access plugin content automatically (for plugins that don't match a specific rule)?]`


**方法**:

- `FARPDefaultPluginDomainRules& opAssign(FARPDefaultPluginDomainRules Other)`

---

