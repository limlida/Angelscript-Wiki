### UVirtualTexturePoolConfig


Configuration for virtual texture physical pool sizes.

**属性**:

- `int DefaultSizeInMegabyte [Upper size limit in megabytes for any pools not explicitly matched by a config entry in the Pools array.]`
- `TArray<FVirtualTextureSpacePoolConfig> Pools [Serialized array of configs.
A virtual texture physical pool iterates these from last to first and uses the first matching config that it finds.]`
- `TArray<FVirtualTextureSpacePoolConfig> TransientPools [Transient array of runtime detected configs used by the PoolAutoGrow system.
A virtual texture physical pool searches these to find a match before searching the configs in Pools.
These tracked configs can be copied to the serialized Pools as a good estimation of the fixed pool sizes that a cooked project needs.]`
- `bool bPoolAutoGrowInEditor [Enable physical pools growing on oversubscription.
Each physical pool will grow to the maximum size so far requested.
This setting applies to the editor only. To have similar behavior in a cooked build use r.VT.PoolAutoGrow.]`

---

