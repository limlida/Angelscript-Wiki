### UPatternToolSettings


Settings for the Pattern Tool

**属性**:

- `float32 ProjectionOffset [How much each pattern item should be moved along the negative Z axis of the plane mechanic if Project Elements Down is enabled]`
- `int Seed [The seed used to introduce random transform variations when enabled]`
- `EPatternToolShape Shape [Shape of the underlying Pattern]`
- `EPatternToolSingleAxis SingleAxis [Axis direction used for the Pattern geometry]`
- `EPatternToolSinglePlane SinglePlane [Plane used for the Pattern geometry]`
- `bool bHideSources [Hide the source meshes when enabled]`
- `bool bProjectElementsDown [Whether or not the pattern items should be projected along the negative Z axis of the plane mechanic]`
- `bool bRandomlyPickElements [Whether to randomly pick which source mesh is scattered at each location, or to always use all source meshes]`
- `bool bUseRelativeTransforms [If false, all pattern elements will be positioned at the origin of the first pattern element]`

---

