### FMediaSourceColorSettings


Manual definition of media source color space & encoding.

**属性**:

- `FVector2D BlueChromaticityCoordinate [Blue chromaticity coordinate of the source color space.]`
- `ETextureChromaticAdaptationMethod ChromaticAdaptationMethod [Chromatic adaption method applied if the source white point differs from the working color space white point.]`
- `ETextureColorSpace ColorSpaceOverride [Source color space of the media.]`
- `EMediaSourceEncoding EncodingOverride [Source encoding of the media.]`
- `FVector2D GreenChromaticityCoordinate [Green chromaticity coordinate of the source color space.]`
- `FVector2D RedChromaticityCoordinate [Red chromaticity coordinate of the source color space.]`
- `FVector2D WhiteChromaticityCoordinate [White chromaticity coordinate of the source color space.]`


**方法**:

- `FMediaSourceColorSettings& opAssign(FMediaSourceColorSettings Other)`

---

