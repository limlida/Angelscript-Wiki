### UFractureCustomVoronoiSettings


**属性**:

- `int GridX [Number of sites to add to grid in X]`
- `int GridY [Number of sites to add to grid in Y]`
- `int GridZ [Number of sites to add to grid in Z]`
- `float32 NormalOffset [Offset point samples in the vertex normal directions]`
- `int SitesToAdd [Number of Voronoi sites to add]`
- `float32 SkipFraction [Fraction of points to skip]`
- `EDownsamplingMode SkipMode [Strategy used for skipping points; only used if SkipFraction is greater than 0]`
- `float32 Variability [Amount to randomly displace each Voronoi site (in cm)]`
- `EVoronoiPattern VoronoiPattern [Method to generate next group of voronoi sites]`
- `bool bStartAtActor [Whether to use the reference mesh actor's transform when placing the Voronoi sites, or center them at the current gizmo location instead]`

---

