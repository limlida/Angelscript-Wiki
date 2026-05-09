### UGameFeatureAction_AddChunkOverride


Used to cook assets from a GFP into a specified chunkId.
This can be useful when individually cooking GFPs for iteration or splitting up a packaged
game into smaller downloadable chunks.

**属性**:

- `int ChunkId [What ChunkId to place the packages inside for this particular GFP.]`
- `int ParentChunk [What Chunk we are parented to.
This is used by the ChunkDependencyInfo for when mutiple chunk overrides might conflict requiring assets to be pulled into a lower chunk]`
- `bool bShouldOverrideChunk [Should this GFP have their packages cooked into the specified ChunkId]`

---

