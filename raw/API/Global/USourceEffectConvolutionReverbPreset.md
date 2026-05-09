### USourceEffectConvolutionReverbPreset


**属性**:

- `ESubmixEffectConvolutionReverbBlockSize BlockSize [Set the internal block size. This can effect latency and performance. Higher values will result in
lower CPU costs while lower values will result higher CPU costs. Latency may be affected depending
on the interplay between audio engines buffer sizes and this effects block size. Generally, higher
values result in higher latency, and lower values result in lower latency.]`
- `UAudioImpulseResponse ImpulseResponse [The impulse response used for convolution.]`
- `FSourceEffectConvolutionReverbSettings Settings [ConvolutionReverbPreset Preset Settings.]`
- `bool bEnableHardwareAcceleration [Opt into hardware acceleration of the convolution reverb (if available)]`


**方法**:

- `SetImpulseResponse(UAudioImpulseResponse InImpulseResponse)`  
  Set the convolution reverb impulse response
- `SetSettings(FSourceEffectConvolutionReverbSettings InSettings)`  
  Set the convolution reverb settings

---

