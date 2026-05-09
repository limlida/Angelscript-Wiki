### UDNAAsset


An asset holding the data needed to generate/update/animate a RigLogic character
It is imported from character's DNA file as a bit stream, and separated out it into runtime (behavior) and design-time chunks;
Currently, the design-time part still loads the geometry, as it is needed for the skeletal mesh update; once SkeletalMeshDNAReader is
fully implemented, it will be able to read the geometry directly from the SkeletalMesh and won't load it into this asset

**属性**:

- `UAssetImportData AssetImportData []`
- `TMap<FString,FString> MetaData [Collection of runtime metadata related to a specific character.
The value field is a FString and requires casting for a derived types.]`
- `FRigLogicConfiguration RigLogicConfiguration`
- `bool bKeepDNAAfterInitialization [In non-editor builds, the DNA source data will be unloaded to save memory after the runtime
data has been initialized from it.

Set this property to true to keep the DNA in memory, e.g. if you need to modify it at
runtime. For most use cases, this shouldn't be needed.]`

---

