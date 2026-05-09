### UStreamableSparseVolumeTexture


Represents a streamable SparseVolumeTexture asset and serves as base class for UStaticSparseVolumeTexture and UAnimatedSparseVolumeTexture. It has an array of USparseVolumeTextureFrame.

**属性**:

- `TextureAddress AddressX [The addressing mode to use for the X axis.]`
- `TextureAddress AddressY [The addressing mode to use for the Y axis.]`
- `TextureAddress AddressZ [The addressing mode to use for the Z axis.]`
- `UAssetImportData AssetImportData []`
- `TArray<TObjectPtr<UAssetUserData>> AssetUserData [Array of user data stored with the asset]`
- `int NumberOfPrefetchFrames [When using non-blocking streaming requests, upcoming frames are loaded into memory in advance. This property controls how many frames to prefetch.]`
- `float32 PrefetchPercentageBias [When using non-blocking streaming requests, upcoming frames are loaded into memory in advance. This property applies a bias in percent to how much data is prefetched for every frame.
A value of 20.0 adds 20% to all prefetch percentages. So if PrefetchPercentageStepSize is set to 20.0, frame N+1 is prefetched at 80% + 20% = 100%, frame N+2 at 60% + 20% = 80%, N+3 at 40% + 20% = 60% etc.]`
- `float32 PrefetchPercentageStepSize [When using non-blocking streaming requests, upcoming frames are loaded into memory in advance. This property controls the size reduction in percent of each additional prefetched frames.
A value of 20.0 would prefetch frame N+1 at 80%, N+2 at 60%, N+3 at 40% etc.]`
- `float32 StreamingPoolSizeFactor [The SVT streaming pool is sized such that it can hold the largest frame multiplied by this value. There should be some slack to allow for prefetching frames.]`
- `bool bLocalDDCOnly [If enabled, the SparseVolumeTexture is only going to use the local DDC. For certain assets it might be reasonable to also use the remote DDC, but for larger assets this will mean long up- and download times.]`

---

