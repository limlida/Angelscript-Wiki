### FWaveTableSettings


**属性**:

- `int ChannelIndex [Index of channel in file to build WaveTable from (wraps if channel is greater than number in file)]`
- `float32 FadeIn [Percent to fade in over.]`
- `float32 FadeOut [Percent to fade out over.]`
- `FFilePath FilePath [File to import]`
- `float32 Phase [Percent to phase shift of table]`
- `FWaveTableData SourceData [Source data last imported from the source file]`
- `float32 Tail [Percent to remove from end of sampled WaveTable.]`
- `float32 Top [Percent to remove from beginning of sampled WaveTable.]`
- `bool bNormalize [Whether or not to normalize the WaveTable.]`
- `bool bRemoveOffset [Whether or not to remove offset from original file
(analogous to "DC offset" in circuit theory).]`


**方法**:

- `FWaveTableSettings& opAssign(FWaveTableSettings Other)`

---

