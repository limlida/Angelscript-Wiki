### UNiagaraDataInterfaceAudioOscilloscope


Data Interface allowing sampling of recent audio data.

**属性**:

- `int Resolution [The number of samples of audio to pass to the GPU. Audio will be resampled to fit this resolution.
Increasing this number will increase the resolution of the waveform, but will also increase usage of the GPU memory bus,
potentially causing issues across the application.]`
- `float32 ScopeInMilliseconds [The number of milliseconds of audio to show.]`
- `USoundSubmix Submix []`

---

