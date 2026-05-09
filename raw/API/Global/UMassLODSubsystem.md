### UMassLODSubsystem


* Manager responsible to manage and synchronized available viewers

**属性**:

- `bool bAllowNonPlayerViwerActors [Whether using non-player actors as LOD Viewers is supported.]`
- `bool bGatherPlayerControllers [If true, all PlayerControllers will be gathered as viewers for LOD calculations.]`
- `bool bGatherStreamingSources [If true, all streaming sources will be gathered as viewers for LOD calculations.]`
- `bool bUsePlayerPawnLocationInsteadOfCamera [If set to true will prefer to use Player-owned Pawn's location and rotation over Player's camera as the viewer's
location and rotation.
Note that this works best with distance-only LOD and can introduce subtle inaccuracies if Frustum-based LOD is being used.]`

---

