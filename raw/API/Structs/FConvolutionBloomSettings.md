### FConvolutionBloomSettings


**属性**:

- `float32 BufferScale [Implicit buffer region as a fraction of the screen size to insure the bloom does not wrap across the screen.  Larger sizes have perf impact.]`
- `FVector2D CenterUV [The UV location of the center of the kernel.  Should be very close to (.5,.5)]`
- `float32 Intensity [Multiplier for convolution bloom contributions >=0: off, 1(default), >1 brighter]`
- `float32 PreFilterMax [Boost intensity of select pixels  prior to computing bloom convolution (Min, Max, Multiplier).  Max < Min disables convolution boost]`
- `float32 PreFilterMin [Boost intensity of select pixels  prior to computing bloom convolution (Min, Max, Multiplier).  Max < Min disables convolution boost]`
- `float32 PreFilterMult [Boost intensity of select pixels  prior to computing bloom convolution (Min, Max, Multiplier).  Max < Min disables convolution boost]`
- `float32 ScatterDispersion [Intensity multiplier on the scatter dispersion energy of the kernel. 1.0 means exactly use the same energy as the kernel scatter dispersion.]`
- `float32 Size [Relative size of the convolution kernel image compared to the minor axis of the viewport]`
- `UTexture2D Texture [Texture to replace default convolution bloom kernel]`


**方法**:

- `FConvolutionBloomSettings& opAssign(FConvolutionBloomSettings Other)`

---

