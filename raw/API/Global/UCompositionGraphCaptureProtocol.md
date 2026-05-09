### UCompositionGraphCaptureProtocol


**属性**:

- `EHDRCaptureGamut CaptureGamut [The color gamut to use when storing HDR captured data. The gamut depends on whether the bCaptureFramesInHDR option is enabled.]`
- `int HDRCompressionQuality [Compression Quality for HDR Frames (0 for no compression, 1 for default compression which can be slow)]`
- `FCompositionGraphCapturePasses IncludeRenderPasses [A list of render passes to include in the capture. Leave empty to export all available passes.]`
- `FSoftObjectPath PostProcessingMaterial [Custom post processing material to use for rendering]`
- `bool bCaptureFramesInHDR [Whether to capture the frames as HDR textures (*.exr format)]`
- `bool bDisableScreenPercentage [Whether to disable screen percentage]`

---

