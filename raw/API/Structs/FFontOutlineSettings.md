### FFontOutlineSettings


Settings for applying an outline to a font

**属性**:

- `FLinearColor OutlineColor [The color of the outline for any character in this font]`
- `UObject OutlineMaterial [Optional material to apply to the outline]`
- `int OutlineSize [Size of the outline in slate units (at 1.0 font scale this unit is a pixel)]`
- `bool bApplyOutlineToDropShadows [When enabled the outline will be applied to any drop shadow that uses this font]`
- `bool bMiteredCorners [When enabled, outlines have sharp mitered corners, otherwise they are rounded.]`
- `bool bSeparateFillAlpha [When enabled the outline will be completely translucent where the filled area will be.  This allows for a separate fill alpha value
The trade off when enabling this is slightly worse quality for completely opaque fills where the inner outline border meets the fill area]`


**方法**:

- `FFontOutlineSettings& opAssign(FFontOutlineSettings Other)`

---

