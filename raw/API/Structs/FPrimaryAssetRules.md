### FPrimaryAssetRules


Structure defining rules for what to do with assets, this is defined per type and can be overridden per asset

**属性**:

- `int ChunkId [Assets will be put into this Chunk ID specifically, if set to something other than -1. The default Chunk is Chunk 0.]`
- `EPrimaryAssetCookRule CookRule [Rule describing when this asset should be cooked.]`
- `int Priority [Primary Assets with a higher priority will take precedence over lower priorities when assigning management for referenced assets. If priorities match, both will manage the same Secondary Asset.]`
- `bool bApplyRecursively [If true, this rule will apply to all referenced Secondary Assets recursively, as long as they are not managed by a higher-priority Primary Asset.]`


**方法**:

- `FPrimaryAssetRules& opAssign(FPrimaryAssetRules Other)`

---

