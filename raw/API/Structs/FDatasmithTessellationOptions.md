### FDatasmithTessellationOptions


**属性**:

- `float32 ChordTolerance [Maximum distance between any generated triangle and the original surface. Smaller values make more triangles.]`
- `float GeometricTolerance [Tolerance used to determine if a surface should be tessellated or not.]`
- `float32 MaxEdgeLength [Maximum length of any edge in the generated triangles. Smaller values make more triangles.]`
- `float32 NormalTolerance [Maximum angle between adjacent triangles. Smaller values make more triangles.]`
- `EDatasmithCADStitchingTechnique StitchingTechnique [Stitching technique applied on model before tessellation. Sewing could impact number of objects.]`
- `float StitchingTolerance [Tolerance used to determine if two surfaces should be stitched.]`


**方法**:

- `FDatasmithTessellationOptions& opAssign(FDatasmithTessellationOptions Other)`

---

