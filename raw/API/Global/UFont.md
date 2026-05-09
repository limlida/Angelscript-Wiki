### UFont


A font object, for use by Slate, UMG, and Canvas.

A font can either be:
  * Runtime cached - The font contains a series of TTF files that combine to form a composite font. The glyphs are cached on demand when required at runtime.
  * Offline cached - The font contains a series of textures containing pre-baked cached glyphs and their associated texture coordinates.

**属性**:

- `float32 Ascent [@todo document]`
- `TArray<FFontCharacter> Characters [List of characters in the font.  For a MultiFont, this will include all characters in all sub-fonts!  Thus,
              the number of characters in this array isn't necessary the number of characters available in the font]`
- `FCompositeFont CompositeFont []`
- `float32 Descent [@todo document]`
- `float32 EmScale [Font metrics.]`
- `EFontCacheType FontCacheType [What kind of font caching should we use? This controls which options we see]`
- `FFontImportOptionsData ImportOptions [Options used when importing this font]`
- `int Kerning [Default horizontal spacing between characters when rendering text with this font]`
- `float32 Leading [@todo document]`
- `FName LegacyFontName [The default font name to use for legacy Canvas APIs that don't specify a font name]`
- `int LegacyFontSize [The default size of the font used for legacy Canvas APIs that don't specify a font size]`
- `ERuntimeFontSource RuntimeFontSource [Where is the runtime font data for this Font stored?]`
- `float32 ScalingFactor [Scale to apply to the font.]`

---

