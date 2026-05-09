### FSlateFontInfo


A representation of a font in Slate.

**属性**:

- `UObject FontMaterial [The material to use when rendering]`
- `const UObject FontObject [The font object (valid when used from UMG or a Slate widget style asset)]`
- `int LetterSpacing [The uniform spacing (or tracking) between all characters in the text.]`
- `float32 MonospacedWidth [The uniform width to apply to all characters when bForceMonospaced is enabled, proportional of the font Size.]`
- `FFontOutlineSettings OutlineSettings [Settings for applying an outline to a font]`
- `float32 Size [The font size is a measure in point values. The conversion of points to Slate Units is done at 96 DPI.
So if you're using a tool like Photoshop to prototype layouts and UI mock ups, you can change the UMG Font settings
to ensure that UMG font size is displayed in its 72 DPI equivalent, even if Slate will still use 96 DPI internally.]`
- `float32 SkewAmount [A skew amount to apply to the text.]`
- `FName TypefaceFontName [The name of the font to use from the default typeface (None will use the first entry)]`
- `bool bForceMonospaced [Enable pseudo-monospaced font.]`
- `bool bMaterialIsStencil [When enabled, whole quads are filled by the material without automatically stenciling the text - this needs to be done within the material (using Font Signed Distance node).]`


**方法**:

- `FSlateFontInfo& opAssign(FSlateFontInfo Other)`

---

