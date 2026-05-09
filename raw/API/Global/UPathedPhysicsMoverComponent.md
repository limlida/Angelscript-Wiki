### UPathedPhysicsMoverComponent


**属性**:

- `EPathedPhysicsPlaybackBehavior DefaultPlaybackBehavior [Default follow behavior for the path as a whole]`
- `float32 MovementStartDelay [How long after being told to StartMoving() to delay before actually moving. Generally used to stagger the start times of a handful of autoplaying instances.]`
- `float32 PreviewMeshProgress [How far along the starting/default path to preview the controlled mesh]`
- `UMaterialInterface ProgressPreviewMeshMaterial [The material to apply to the preview mesh displayed along the path at PreviewMeshProgress (leave empty for an exact duplicate)]`
- `bool bAutoMoveOnSpawn [Whether to start moving along the path immediately upon beginning play]`
- `bool bDisplayProgressPreviewMesh [When true and the root component of the actor is a mesh, a duplicate mesh will be shown at PreviewMeshProgress along the starting/default path]`


**方法**:

- `EPathedPhysicsPlaybackBehavior GetDefaultPlaybackBehavior() const`
- `FTransform GetPathOriginTransform() const`
- `bool IsInReverse() const`
- `bool IsJointEnabled() const`
- `bool IsMoving() const`
- `SetDefaultPlaybackBehavior(EPathedPhysicsPlaybackBehavior PlaybackBehavior)`
- `SetIsMoving(bool bShouldMove)`
- `SetPathOriginTransform(FTransform NewPathOrigin)`  
  Changes path origin (i.e. the transform at the very beginning), causing the whole path to shift accordlingly.
The updated component is immediately teleported by the delta between the old and new origins, retaining all other physics state
If a more gradual origin shift is desired, it's up to the caller to set this with a small lerp delta each frame.
- `SetPlaybackDirection(bool bPlayForward)`

---

