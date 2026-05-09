### UParameterizeMeshToolUVAtlasProperties


Settings for the UVAtlas Automatic UV Generation Method

**属性**:

- `float32 IslandStretch [Maximum amount of stretch, from none to unbounded. If zero stretch is specified, each triangle will likely be its own UV island.]`
- `int NumIslands [Hint at number of UV islands. The default of 0 means it is determined automatically.]`
- `int TextureResolution [Expected resolution of the output textures; this controls spacing left between UV islands to avoid interpolation artifacts.]`
- `bool bLayoutUDIMPerPolygroup [Layout resulting islands on UDIMs based on polygroups.]`
- `bool bUsePolygroups [Generate new UVs based on polygroups from specified layer.]`

---

