### FGroomCacheImportSettings


**属性**:

- `FGroomConversionSettings ConversionSettings [Conversion settings to apply to the groom cache import when override is enabled]`
- `int FrameEnd [Ending index to stop sampling the animation at]`
- `int FrameStart [Starting index to start sampling the animation from]`
- `FSoftObjectPath GroomAsset [The groom asset the groom cache will be built from (must be compatible)]`
- `EGroomCacheImportType ImportType [Groom Cache types to import]`
- `bool bImportGroomAsset [Import or re-import the groom asset from this file]`
- `bool bImportGroomCache [Import the animated groom that was detected in this file]`
- `bool bOverrideConversionSettings [Set to true to override the groom conversion settings. Otherwise, use the settings from the groom import options]`
- `bool bSkipEmptyFrames [Skip empty (pre-roll) frames and start importing at the frame which actually contains data]`


**方法**:

- `FGroomCacheImportSettings& opAssign(FGroomCacheImportSettings Other)`

---

