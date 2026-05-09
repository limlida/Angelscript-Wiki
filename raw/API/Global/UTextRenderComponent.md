### UTextRenderComponent


Renders text in the world with given font. Contains usual font related attributes such as Scale, Alignment, Color etc.

**属性**:

- `UFont Font [Text font]`
- `float32 HorizSpacingAdjust [Horizontal adjustment per character, default is 0.0]`
- `EHorizTextAligment HorizontalAlignment [Horizontal text alignment]`
- `FText Text [Text content, can be multi line using <br> as line separator]`
- `UMaterialInterface TextMaterial [Text material]`
- `FColor TextRenderColor [Color of the text, can be accessed as vertex color]`
- `float32 VertSpacingAdjust [Vertical adjustment per character, default is 0.0]`
- `EVerticalTextAligment VerticalAlignment [Vertical text alignment]`
- `float32 WorldSize [Vertical size of the fonts largest character in world units. Transform, XScale and YScale will affect final size.]`
- `float32 XScale [Horizontal scale, default is 1.0]`
- `float32 YScale [Vertical scale, default is 1.0]`
- `bool bAlwaysRenderAsText [Allows text to draw unmodified when using debug visualization modes. *]`


**方法**:

- `FVector GetTextLocalSize() const`  
  Get local size of text
- `FVector GetTextWorldSize() const`  
  Get world space size of text
- `SetText(FText Value)`  
  Change the text value and signal the primitives to be rebuilt
- `SetFont(UFont Value)`  
  Change the font and signal the primitives to be rebuilt
- `SetHorizontalAlignment(EHorizTextAligment Value)`  
  Change the horizontal alignment and signal the primitives to be rebuilt
- `SetHorizSpacingAdjust(float32 Value)`  
  Change the text horizontal spacing adjustment and signal the primitives to be rebuilt
- `SetTextMaterial(UMaterialInterface Material)`  
  Change the text material and signal the primitives to be rebuilt
- `SetTextRenderColor(FColor Value)`  
  Change the text render color and signal the primitives to be rebuilt
- `SetVerticalAlignment(EVerticalTextAligment Value)`  
  Change the vertical alignment and signal the primitives to be rebuilt
- `SetVertSpacingAdjust(float32 Value)`  
  Change the text vertical spacing adjustment and signal the primitives to be rebuilt
- `SetWorldSize(float32 Value)`  
  Change the world size of the text and signal the primitives to be rebuilt
- `SetXScale(float32 Value)`  
  Change the text X scale and signal the primitives to be rebuilt
- `SetYScale(float32 Value)`  
  Change the text Y scale and signal the primitives to be rebuilt

---

