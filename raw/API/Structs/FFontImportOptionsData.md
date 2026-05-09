### FFontImportOptionsData


Font import options

**属性**:

- `EFontImportCharacterSet CharacterSet [Character set for this font]`
- `FString Chars [Explicit list of characters to include in the font]`
- `FString CharsFilePath [Path on disk to a folder where files that contain a list of characters to include in the font]`
- `FString CharsFileWildcard [File mask wildcard that specifies which files within the CharsFilePath to scan for characters in include in the font]`
- `int DistanceFieldScaleFactor [Scale factor determines how big to scale the font bitmap during import when generating distance field values
Note that higher values give better quality but importing will take much longer.]`
- `float32 DistanceFieldScanRadiusScale [Shrinks or expands the scan radius used to determine the silhouette of the font edges.]`
- `int ExtendBoxBottom [How much to extend the bottom of the UV coordinate rectangle for each character in pixels]`
- `int ExtendBoxLeft [How much to extend the left of the UV coordinate rectangle for each character in pixels]`
- `int ExtendBoxRight [How much to extend the right of the UV coordinate rectangle for each character in pixels]`
- `int ExtendBoxTop [How much to extend the top of the UV coordinate rectangle for each character in pixels]`
- `FString FontName [Name of the typeface for the font to import]`
- `FLinearColor ForegroundColor [Color of the foreground font pixels.  Usually you should leave this white and instead use the UI Styles editor to change the color of the font on the fly]`
- `float32 Height [Height of font (point size)]`
- `int Kerning [The initial horizontal spacing adjustment between rendered characters.  This setting will be copied directly into the generated Font object's properties.]`
- `int TexturePageMaxHeight [The maximum vertical size of a texture page for this font in pixels.  The actual height of a texture page may be less than this if the font can fit within a smaller sized texture page.]`
- `int TexturePageWidth [Horizontal size of each texture page for this font in pixels]`
- `FString UnicodeRange [Range of Unicode character values to include in the font.  You can specify ranges using hyphens and/or commas (e.g. '400-900')]`
- `int XPadding [Horizontal padding between each font character on the texture page in pixels]`
- `int YPadding [Vertical padding between each font character on the texture page in pixels]`
- `bool bAlphaOnly [if true then forces PF_G8 and only maintains Alpha value and discards color]`
- `bool bCreatePrintableOnly [Skips generation of glyphs for any characters that are not considered 'printable']`
- `bool bEnableAntialiasing [Whether the font should be antialiased or not.  Usually you should leave this enabled.]`
- `bool bEnableBold [Whether the font should be generated in bold or not]`
- `bool bEnableDropShadow [Enables a very simple, 1-pixel, black colored drop shadow for the generated font]`
- `bool bEnableItalic [Whether the font should be generated in italics or not]`
- `bool bEnableLegacyMode [Enables legacy font import mode.  This results in lower quality antialiasing and larger glyph bounds, but may be useful when debugging problems]`
- `bool bEnableUnderline [Whether the font should be generated with an underline or not]`
- `bool bIncludeASCIIRange [When specifying a range of characters and this is enabled, forces ASCII characters (0 thru 255) to be included as well]`
- `bool bUseDistanceFieldAlpha [If true then the alpha channel of the font textures will store a distance field instead of a color mask]`


**方法**:

- `FFontImportOptionsData& opAssign(FFontImportOptionsData Other)`

---

