### FMediaPlayerRecordingSettings


**属性**:

- `FString BaseFilename [How to name each frame.]`
- `int CompressionQuality [An image format specific compression setting.
For EXRs, either 0 (Default) or 1 (Uncompressed)
For PNGs & JPEGs, 0 (Default) or a value between 1 (worst quality, best compression) and 100 (best quality, worst compression)]`
- `EMediaPlayerRecordingImageFormat ImageFormat [The image format we wish to record to.]`
- `EMediaPlayerRecordingNumerationStyle NumerationStyle [How to numerate the filename.]`
- `bool bActive [Whether this MediaPlayer is active and its event will be recorded when the 'Record' button is pressed.]`
- `bool bRecordMediaFrame [Whether this MediaPlayer is active and the image frame will be recorded when the 'Record' button is pressed.]`
- `bool bResetAlpha [If the format support it, set the alpha to 1 (or 255).
@note Removing alpha increase the memory foot print.]`


**方法**:

- `FMediaPlayerRecordingSettings& opAssign(FMediaPlayerRecordingSettings Other)`

---

