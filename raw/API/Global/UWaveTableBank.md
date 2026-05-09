### UWaveTableBank


**属性**:

- `TArray<FWaveTableBankEntry> Entries []`
- `EWaveTableResolution Resolution [Number of samples cached for each entry in the given bank.]`
- `EWaveTableSamplingMode SampleMode [Sampling mode used for the bank.]`
- `int SampleRate [Number of samples cached for each entry in the given bank.]`
- `bool bBipolar [Determines if output from curve/wavetable are to be clamped between
[-1.0f, 1.0f] (i.e. for waveform generation, oscillation, etc.)
or [0.0f, 1.0f] (i.e. for enveloping) when sampling curve/wavetable]`

---

