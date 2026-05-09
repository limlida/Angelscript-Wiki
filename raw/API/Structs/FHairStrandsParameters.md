### FHairStrandsParameters


**属性**:

- `float32 StrandsDensity [Density of the strands in g/cm3]`
- `EGroomStrandsSize StrandsSize [Number of particles per guide that will be used for simulation]`
- `float32 StrandsSmoothing [Smoothing between 0 and 1 of the incoming guides curves for better stability]`
- `float32 StrandsThickness [Strands thickness in cm that will be used for mass and inertia computation]`
- `FRuntimeFloatCurve ThicknessScale [This curve determines how much the strands thickness will be scaled along each strand. 
 The X axis range is [0,1], 0 mapping the root and 1 the tip]`


**方法**:

- `FHairStrandsParameters& opAssign(FHairStrandsParameters Other)`

---

