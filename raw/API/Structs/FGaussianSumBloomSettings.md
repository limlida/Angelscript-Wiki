### FGaussianSumBloomSettings


**属性**:

- `float32 Filter1Size [Diameter size for the Bloom1 in percent of the screen width
(is done in 1/2 resolution, larger values cost more performance, good for high frequency details)
>=0: can be clamped because of shader limitations]`
- `FLinearColor Filter1Tint [Bloom1 tint color]`
- `float32 Filter2Size [Diameter size for Bloom2 in percent of the screen width
(is done in 1/4 resolution, larger values cost more performance)
>=0: can be clamped because of shader limitations]`
- `FLinearColor Filter2Tint [Bloom2 tint color]`
- `float32 Filter3Size [Diameter size for Bloom3 in percent of the screen width
(is done in 1/8 resolution, larger values cost more performance)
>=0: can be clamped because of shader limitations]`
- `FLinearColor Filter3Tint [Bloom3 tint color]`
- `float32 Filter4Size [Diameter size for Bloom4 in percent of the screen width
(is done in 1/16 resolution, larger values cost more performance, best for wide contributions)
>=0: can be clamped because of shader limitations]`
- `FLinearColor Filter4Tint [Bloom4 tint color]`
- `float32 Filter5Size [Diameter size for Bloom5 in percent of the screen width
(is done in 1/32 resolution, larger values cost more performance, best for wide contributions)
>=0: can be clamped because of shader limitations]`
- `FLinearColor Filter5Tint [Bloom5 tint color]`
- `float32 Filter6Size [Diameter size for Bloom6 in percent of the screen width
(is done in 1/64 resolution, larger values cost more performance, best for wide contributions)
>=0: can be clamped because of shader limitations]`
- `FLinearColor Filter6Tint [Bloom6 tint color]`
- `float32 Intensity [Multiplier for Gaussian bloom contributions >=0: off, 1(default), >1 brighter]`
- `float32 SizeScale [Scale for all bloom sizes]`
- `float32 Threshold [minimum brightness the bloom starts having effect
-1:all pixels affect bloom equally (physically correct, faster as a threshold pass is omitted), 0:all pixels affect bloom brights more, 1(default), >1 brighter]`


**方法**:

- `FGaussianSumBloomSettings& opAssign(FGaussianSumBloomSettings Other)`

---

