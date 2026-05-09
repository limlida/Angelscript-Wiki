### FHairInterpolationSettings


**属性**:

- `EGroomGuideType GuideType [Type of guides:
 - Imported: use imported guides
 - Generated: generate guides from strands
 - Rigged: generated rigged guides from strands.]`
- `float32 HairToGuideDensity [Density factor for converting hair into guide curve if no guides are provided. The value should be between 0 and 1, and can be thought as a ratio/percentage of strands used as guides.]`
- `EHairInterpolationWeight InterpolationDistance [Interpolation distance metric.]`
- `EHairInterpolationQuality InterpolationQuality [Interpolation data quality.]`
- `int RiggedGuideNumCurves [Number of guides that will be generated on the groom and the skeletal mesh]`
- `int RiggedGuideNumPoints [Number of points/bones per generated guide]`
- `bool bRandomizeGuide [Randomize which guides affect a given hair strand.]`
- `bool bUseUniqueGuide [Force a hair strand to be affected by a unique guide.]`


**方法**:

- `FHairInterpolationSettings& opAssign(FHairInterpolationSettings Other)`

---

