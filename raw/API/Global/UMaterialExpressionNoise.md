### UMaterialExpressionNoise


**属性**:

- `float32 LevelScale [usually 2 but higher values allow efficient use of few levels]`
- `int Levels [1 = fast but little detail, .. larger numbers cost more performance]`
- `ENoiseFunction NoiseFunction [Noise function, affects performance and look]`
- `float32 OutputMax []`
- `float32 OutputMin []`
- `int Quality [Lower numbers are faster and lower quality, higher numbers are slower and higher quality]`
- `uint RepeatSize [How many units in each tile (if Tiling is on)]`
- `float32 Scale [can also be done with a multiply on the Position]`
- `EPositionOrigin WorldPositionOriginType [Defines the reference space for the Position input.]`
- `bool bTiling [Whether to use tiling noise pattern, useful for baking to seam-free repeating textures]`
- `bool bTurbulence [How multiple frequencies are getting combined]`

---

