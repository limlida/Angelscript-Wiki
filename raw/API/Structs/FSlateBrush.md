### FSlateBrush


A brush which contains information about how to draw a Slate element
//, meta = (HasNativeMake = ""))

**属性**:

- `ESlateBrushDrawType DrawAs [How to draw the image]`
- `FVector2f ImageSize [Size of the resource in Slate Units]`
- `ESlateBrushImageType ImageType [The type of image]`
- `FMargin Margin [The margin to use in Box and Border modes]`
- `ESlateBrushMirrorType Mirroring [How to mirror the image in Image mode.  This is normally only used for dynamic image brushes where the source texture
          comes from a hardware device such as a web camera.]`
- `FSlateBrushOutlineSettings OutlineSettings [How to draw the outline.  Currently only used for RoundedBox type brushes.]`
- `FName ResourceName [The name of the rendering resource to use]`
- `UObject ResourceObject [The image to render for this brush, can be a UTexture or UMaterialInterface or an object implementing
the AtlasedTextureInterface.]`
- `ESlateBrushTileType Tiling [How to tile the image in Image mode]`
- `FSlateColor TintColor [Tinting applied to the image.]`


**方法**:

- `FSlateBrush& opAssign(FSlateBrush Other)`

---

