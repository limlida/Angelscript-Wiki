### FPluginReferenceMetadata


We use this object to display plugin reference properties using details view.

**属性**:

- `FString Name [Name of the dependency plugin]`
- `bool bActivate [Whether the dependency plugin should be activated when this plugin is activated. This only works if the dependency is a GameFeaturePlugin]`
- `bool bEnabled [Whether the dependency plugin should be enabled by default]`
- `bool bOptional [Whether the dependency plugin is optional meaning it will be silently ignored if not present]`


**方法**:

- `FPluginReferenceMetadata& opAssign(FPluginReferenceMetadata Other)`

---

