### UFontFace


A font face asset contains the raw payload data for a source TTF/OTF file as used by FreeType.
During cook this asset type generates a ".ufont" file containing the raw payload data (unless loaded "Inline").

**属性**:

- `int AscendOverriddenValue [The typographic ascender of the face, expressed in font units.]`
- `int DescendOverriddenValue [The typographic ascender of the face, expressed in font units.]`
- `EFontHinting Hinting [The hinting algorithm to use with the font face.]`
- `EFontLayoutMethod LayoutMethod [Which method should we use when laying out the font? Try changing this if you notice clipping or height issues with your font.]`
- `EFontLoadingPolicy LoadingPolicy [Enum controlling how this font face should be loaded at runtime. See the enum for more explanations of the options.]`
- `int MaxDistanceFieldPpem [Single-channel distance field px/em resolution "high" quality value]`
- `int MaxMultiDistanceFieldPpem [Multi-channel distance field px/em resolution "high" quality value]`
- `int MidDistanceFieldPpem [Single-channel distance field px/em resolution "medium" quality value]`
- `int MidMultiDistanceFieldPpem [Multi-channel distance field px/em resolution "medium" quality value]`
- `int MinDistanceFieldPpem [Single-channel distance field px/em resolution "low" quality value]`
- `int MinMultiDistanceFieldPpem [Multi-channel distance field px/em resolution "low" quality value]`
- `TOptional<FFontFacePlatformRasterizationOverrides> PlatformRasterizationModeOverrides [If set, allows to override distance field modes set in device profiles]`
- `FString SourceFilename [The filename of the font face we were created from. This may not always exist on disk, as we may have previously loaded and cached the font data inside this asset.]`
- `int StrikeBrushHeightPercentage [The percentage of the font height to draw the strike brush at.
0% is the bottom, 100% is the top.]`
- `bool bEnableDistanceFieldRendering [Enables distance field rendering for this face (otherwise only Bitmap rendering is used)]`
- `bool bIsAscendOverridden [Activate this option to use the specified ascend value instead of the value from the font.]`
- `bool bIsDescendOverridden [Activate this option to use the specified descend value instead of the value from the font.]`

---

