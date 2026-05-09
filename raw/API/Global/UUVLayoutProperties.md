### UUVLayoutProperties


UV Layout Settings

**属性**:

- `EUVLayoutType LayoutType [Type of layout applied to input UVs]`
- `float32 Scale [Uniform scale applied to UVs after packing]`
- `int TextureResolution [Expected resolution of the output textures; this controls spacing left between UV islands to avoid interpolation artifacts]`
- `FVector2D Translation [Translation applied to UVs after packing, and after scaling]`
- `bool bAllowFlips [Allow the Repack layout type to flip the orientation of UV islands to save space. Note that this may cause problems for downstream operations, and therefore is disabled by default.]`
- `bool bEnableUDIMLayout [Enable UDIM aware layout and keep islands within their originating UDIM tiles when laying out.]`
- `bool bPreserveRotation [Force the Repack layout type to preserve existing rotation of UV islands. Note, this might lead to the packing not being as space efficient as possible, and therefore is disabled by default.]`
- `bool bPreserveScale [Force the Repack layout type to preserve existing scaling of UV islands. Note, this might lead to the packing not fitting within a unit square, and therefore is disabled by default.]`

---

