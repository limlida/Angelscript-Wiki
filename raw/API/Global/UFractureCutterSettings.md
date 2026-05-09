### UFractureCutterSettings


Settings specifically related to the one-time destructive fracturing of a mesh *

**属性**:

- `float32 Amplitude [Size of the Perlin noise displacement (in cm). If 0, no noise will be applied]`
- `float32 ChanceToFracture [Chance to fracture each selected bone. If 0, no bones will fracture; if 1, all bones will fracture.]`
- `float32 FractionPreviewCells [Fraction of cells to show in noise preview]`
- `float32 Frequency [Period of the Perlin noise.  Smaller values will create a smoother noise pattern]`
- `float32 Grout [Amount of space to leave between cut pieces]`
- `FString InternalMaterial [Material to set for internal faces on fracture. 'Automatic' will use the most common 'internal' material in each geometry, or the last valid material if no internal faces are found]`
- `float32 Lacunarity [Lacunarity of the layers of Perlin noise. At each layer (octave) after the first, the frequency of the Perlin noise is scaled by this factor]`
- `float NoisePreviewScale [Scale of the noise preview plane]`
- `int OctaveNumber [Number of fractal layers of Perlin noise to apply. Each layer is additive, with Amplitude and Frequency parameters scaled by Persistence and Lacunarity
Smaller values (1 or 2) will create noise that looks like gentle rolling hills, while larger values (> 4) will tend to look more like craggy mountains]`
- `float32 Persistence [Persistence of the layers of Perlin noise. At each layer (octave) after the first, the amplitude of the Perlin noise is scaled by this factor]`
- `float32 PointSpacing [Distance (in cm) between vertices on cut surfaces where noise is added.  Larger spacing between vertices will create more efficient meshes with fewer triangles, but less resolution to see the shape of the added noise]`
- `int RandomSeed [Random number generator seed for repeatability. If the value is -1, a different random seed will be used every time, otherwise the specified seed will always be used]`
- `bool bDrawDiagram [Draw the edges of the fracture pattern.]`
- `bool bDrawNoisePreview [Whether to show a solid preview of the cutting geometry, including any noise displacement]`
- `bool bDrawSites [Draw points marking the centers of pieces to be cut out by the fracture pattern.]`
- `bool bGroupFracture [Generate a fracture pattern across all selected meshes.]`
- `bool bSplitIslands [Whether to split the fractured mesh pieces based on geometric connectivity after fracturing]`

---

