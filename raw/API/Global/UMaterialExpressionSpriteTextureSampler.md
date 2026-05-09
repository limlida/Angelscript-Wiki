### UMaterialExpressionSpriteTextureSampler


This is a texture sampler 2D with a special automatically defined parameter name. The texture specified here will be replaced by the SourceTexture or an AdditionalSourceTextures entry of a Paper2D sprite if this material is used on a sprite.

**属性**:

- `int AdditionalSlotIndex [This is the slot index into the AdditionalSourceTextures array]`
- `FText SlotDisplayName [Friendly label for the texture slot, displayed in the Sprite Editor if not empty]`
- `bool bSampleAdditionalTextures [Is this a sampler for the default SourceTexture or the AdditionalSourceTextures list?]`

---

