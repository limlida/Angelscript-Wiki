### FBroadphaseSettings


Settings pertaining to which PhysX broadphase to use, and settings for MBP if that is the chosen broadphase type

**属性**:

- `FBox MBPBounds [Total bounds for MBP, must cover the game world or collisions are disabled for out of bounds actors]`
- `uint MBPNumSubdivs [Number of times to subdivide the MBP bounds, final number of regions is MBPNumSubdivs^2]`
- `FBox MBPOuterBounds [Total bounds for MBP, should cover absolute maximum bounds of the game world where physics is required]`
- `bool bUseMBPOnClient [Whether to use MBP (Multi Broadphase Pruning]`
- `bool bUseMBPOnServer []`
- `bool bUseMBPOuterBounds [Whether to have MBP grid over concentrated inner bounds with loose outer bounds]`


**方法**:

- `FBroadphaseSettings& opAssign(FBroadphaseSettings Other)`

---

