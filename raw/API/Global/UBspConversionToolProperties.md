### UBspConversionToolProperties


**属性**:

- `EBspConversionMode ConversionMode []`
- `bool bCacheBrushes [Caches individual brush conversions in "convert then combine" mode during a single invocation of
       the tool. Only useful if changing selections or properties after starting the tool. Cleared on tool shutdown.]`
- `bool bExplicitSubtractiveBrushSelection [Whether subtractive brushes have to be explicitly selected to be part of the conversion. If false, all
       subtractive brushes in the level will be used.]`
- `bool bIncludeVolumes [Whether to consider BSP volumes to be valid conversion targets.]`
- `bool bRemoveConvertedSubtractiveBrushes [Whether subtractive brushes used in a conversion should be removed. Only acts on explicitly selected
       subtractive brushes.]`
- `bool bRemoveConvertedVolumes [Whether to remove any selected BSP volumes after using them to create a static mesh.]`
- `bool bShowPreview [Determines whether a dynamic preview is shown. Note that this introduces non-background computations
      at each event that changes the result, rather than only performing a computation on Accept.]`

---

