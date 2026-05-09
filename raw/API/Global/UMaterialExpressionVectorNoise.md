### UMaterialExpressionVectorNoise


**属性**:

- `EVectorNoiseFunction NoiseFunction [Noise function, affects performance and look]`
- `int Quality [For noise functions where applicable, lower numbers are faster and lower quality, higher numbers are slower and higher quality]`
- `uint TileSize [How many units in each tile (if Tiling is on)
For Perlin noise functions, Tile Size must be a multiple of three]`
- `EPositionOrigin WorldPositionOriginType [Defines the reference space for the Position input.]`
- `bool bTiling [Whether tile the noise pattern, useful for baking to seam-free repeating textures]`

---

