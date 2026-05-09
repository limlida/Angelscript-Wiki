### UCameraRigTransition


A camera transition.

**属性**:

- `ECameraRigInitialOrientation InitialOrientation [The orientation to set on the camera rig.]`
- `bool bAllowCameraRigMerging [Whether this transition allows merging two similar camera rigs together.
Similar camera rigs run the same underlying camera rig prefab with different parameter
overrides. When merged, instead of pushing a new camera rig instance on the blend stack,
only the parameter overrides are kept. These parameter overrides are blended together
and the underlying camera rig prefab is run only once.]`
- `bool bOverrideInitialOrientation [Whether to override the default orientation to set on the camera rig.]`

---

