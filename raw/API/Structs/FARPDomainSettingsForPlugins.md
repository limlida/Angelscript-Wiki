### FARPDomainSettingsForPlugins


**属性**:

- `TArray<FARPDomainDefinitionForMatchingPlugins> AdditionalRules [Discovered plugins will be matched against these templates
Priority rules (a path match is preferred to a category match, and within each the longest match wins):
  Highest: The most specific path match
           Any path match
           The most specific category match
           Any category match]`
- `FARPDefaultPluginDomainRules DefaultRule [The default rule if a more specific plugin rule doesn't apply]`


**方法**:

- `FARPDomainSettingsForPlugins& opAssign(FARPDomainSettingsForPlugins Other)`

---

