### UNodeMappingContainer


Node Mapping Container Class
* This saves source items, and target items, and mapping between
* Used by Retargeting, Control Rig mapping. Will need to improve interface better

**属性**:

- `TSoftObjectPtr<UObject> SourceAsset [source asset that is used to create source
should be UNodeMappingProviderInterface]`
- `TMap<FName,FName> SourceToTarget []`
- `TSoftObjectPtr<UObject> TargetAsset [source asset that is used to create target
should be UNodeMappingProviderInterface]`

---

