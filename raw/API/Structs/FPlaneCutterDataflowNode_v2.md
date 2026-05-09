### FPlaneCutterDataflowNode_v2


Editor Fracture Mode / Fracture / Planar tool
Fracture using a set of noised up planes.

**属性**:

- `bool AddSamplesForCollision [If enabled, add extra vertices (without triangles) to the geometry in regions where vertices are spaced too far apart (e.g. across large triangles)
These extra vertices will be used as collision samples in particle-implicit collisions, and can help the physics system detect collisions more accurately

Note this is *only* useful for simulations that use particle-implicit collisions]`
- `float32 Amplitude [Size of the Perlin noise displacement (in cm). If 0, no noise will be applied]`
- `float32 ChanceToFracture [Chance to fracture each selected bone. If 0, no bones will fracture; if 1, all bones will fracture.]`
- `float32 CollisionSampleSpacing [The number of centimeters to allow between vertices on the mesh surface: If there are gaps larger than this, add additional vertices (without triangles) to help support particle-implicit collisions
Only used if Add Samples For Collision is enabled]`
- `int ColorRandomSeed []`
- `TArray<FTransform> CutPlanes [Cutting planes to use. The cut plane normal is aligned to the Z-up of the transform.]`
- `float32 Frequency [Period of the Perlin noise.  Smaller values will create a smoother noise pattern]`
- `float32 Grout [Amount of space to leave between cut pieces]`
- `float32 Lacunarity [Lacunarity of the layers of Perlin noise. At each layer (octave) after the first, the frequency of the Perlin noise is scaled by this factor]`
- `float32 LineWidthMultiplier []`
- `int NumPlanes [Number of random cutting planes to add, in addition to those specified in the Cut Planes array]`
- `int OctaveNumber [Number of fractal layers of Perlin noise to apply. Each layer is additive, with Amplitude and Frequency parameters scaled by Persistence and Lacunarity
Smaller values (1 or 2) will create noise that looks like gentle rolling hills, while larger values (> 4) will tend to look more like craggy mountains]`
- `FLinearColor OverrideColor []`
- `float32 Persistence [Persistence of the layers of Perlin noise. At each layer (octave) after the first, the amplitude of the Perlin noise is scaled by this factor]`
- `float32 PlaneSizeMultiplier []`
- `float32 PointSpacing [Distance (in cm) between vertices on cut surfaces where noise is added.  Larger spacing between vertices will create more efficient meshes with fewer triangles, but less resolution to see the shape of the added noise]`
- `int RandomSeed [Seed for random]`
- `EDataflowDebugDrawRenderType RenderType []`
- `bool SplitIslands [Whether to split the fractured mesh pieces based on geometric connectivity after fracturing]`
- `bool bActive [Used to calculate ContainerElementOffsets]`
- `bool bOverrideColor []`
- `bool bRandomizeColors []`
- `bool bTranslucent []`


**方法**:

- `FPlaneCutterDataflowNode_v2& opAssign(FPlaneCutterDataflowNode_v2 Other)`

---

