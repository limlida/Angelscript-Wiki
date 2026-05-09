### UPaperSprite


Sprite Asset

Stores the data necessary to render a single 2D sprite (from a region of a texture)
Can also contain collision shapes for the sprite.

@see UPaperSpriteComponent

**属性**:

- `TArray<TObjectPtr<UTexture>> AdditionalSourceTextures [Additional source textures for other slots]`
- `UMaterialInterface AlternateMaterial [The alternate material to use on a sprite instance if not overridden (this is only used for Diced render geometry, and will be the opaque material in that case, slot 1)]`
- `UPaperSpriteAtlas AtlasGroup [Spritesheet group that this sprite belongs to]`
- `UBodySetup BodySetup [Baked physics data.]`
- `FSpriteGeometryCollection CollisionGeometry [Custom collision geometry polygons (in texture space)]`
- `float32 CollisionThickness [The extrusion thickness of collision geometry when using a 3D collision domain]`
- `FVector2D CustomPivotPoint [Custom pivot point (relative to the sprite rectangle)]`
- `UMaterialInterface DefaultMaterial [The material to use on a sprite instance if not overridden (this is the default material when only one is being used, and is the translucent/masked material for Diced render geometry, slot 0)]`
- `FVector2D OriginInSourceImageBeforeTrimming [Origin within SourceImage, prior to atlasing]`
- `ESpritePivotMode PivotMode [Pivot mode]`
- `float32 PixelsPerUnrealUnit [The scaling factor between pixels and Unreal units (cm) (e.g., 0.64 would make a 64 pixel wide sprite take up 100 cm)]`
- `FSpriteGeometryCollection RenderGeometry [Custom render geometry polygons (in texture space)]`
- `TArray<FPaperSpriteSocket> Sockets [List of sockets on this sprite]`
- `FVector2D SourceDimension [Dimensions within SourceTexture (in pixels)]`
- `FVector2D SourceImageDimensionBeforeTrimming [Dimensions of SourceImage]`
- `TSoftObjectPtr<UTexture2D> SourceTexture [The source texture that the sprite comes from]`
- `FVector2D SourceTextureDimension [Dimension of the texture when this sprite was created
Used when the sprite is resized at some point]`
- `FVector2D SourceUV [Position within SourceTexture (in pixels)]`
- `ESpriteCollisionMode SpriteCollisionDomain [Collision domain (no collision, 2D, or 3D)]`
- `bool bRotatedInSourceImage [This texture is rotated in the atlas]`
- `bool bSnapPivotToPixelGrid [Should the pivot be snapped to a pixel boundary?]`
- `bool bTrimmedInSourceImage [This texture is trimmed, consider the values above]`

---

