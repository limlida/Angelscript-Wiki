### UNiagaraDataInterfaceAudioSpectrum


Data Interface allowing sampling of recent audio spectrum.

**属性**:

- `float32 MaximumFrequency [The maximum frequency represented in the spectrum.]`
- `float32 MinimumFrequency [The minimum frequency represented in the spectrum.]`
- `float32 NoiseFloorDb [The decibel level considered as silence. This is used to scale the output of the spectrum.]`
- `int Resolution [The number of spectrum samples to pass to the GPU]`

---

