### FExponentialHeightFogData


Data for an individual fog line integral.
This is the data which is not shared between fogs when multiple fogs are set up on a single UExponentialHeightFogComponent

**属性**:

- `float32 FogDensity [Global density factor for this fog.]`
- `float32 FogHeightFalloff [Height density factor, controls how the density increases as height decreases.
Smaller values make the visible transition larger.]`
- `float32 FogHeightOffset [Height offset, relative to the actor position Z.]`


**方法**:

- `FExponentialHeightFogData& opAssign(FExponentialHeightFogData Other)`

---

