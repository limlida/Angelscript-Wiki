### UMonoWaveTableSynthPreset


UStruct Mono Wave Table Synth Preset

**属性**:

- `int LockKeyframesToGrid [How many evenly-spaced keyframes to use when LockKeyframesToGrid is true]`
- `FString PresetName [Name the preset]`
- `TArray<FRuntimeFloatCurve> WaveTable [Wave Table Editor]`
- `int WaveTableResolution [How many samples will be taken of the curve from time = [0.0, 1.0]]`
- `bool bLockKeyframesToGridBool [Lock wavetables to evenly spaced keyframes that can be edited vertically only (will re-sample)]`
- `bool bNormalizeWaveTables [Normalize the WaveTable data? False will allow clipping, True will normalize the tables when sent to the synth for rendering]`

---

