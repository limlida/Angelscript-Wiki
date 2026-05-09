### URemoveOccludedTrianglesToolProperties


Standard properties

**属性**:

- `EOccludedAction Action [What action to perform on occluded triangles]`
- `int AddRandomRays [For raycast-based occlusion tests, optionally add random ray direction to increase the accuracy of the visibility sampling]`
- `int AddTriangleSamples [Optionally add random samples to each triangle (in addition to those from TriangleSampling) to increase the accuracy of the visibility sampling]`
- `float MinAreaIsland []`
- `int MinTriCountIsland []`
- `EOcclusionCalculationUIMode OcclusionTestMethod [The method for deciding whether a triangle is occluded]`
- `int ShrinkRemoval [Shrink (erode) the boundary of the set of triangles to remove.]`
- `EOcclusionTriangleSamplingUIMode TriangleSampling [Where to sample triangles to test occlusion]`
- `float WindingIsoValue [The winding isovalue for GeneralizedWindingNumber mode]`
- `bool bOnlySelfOcclude [If false, when multiple meshes are selected the meshes can occlude each other.  When true, we process each selected mesh independently and only consider self-occlusions.]`

---

