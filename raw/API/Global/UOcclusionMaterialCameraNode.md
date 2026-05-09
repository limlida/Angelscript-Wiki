### UOcclusionMaterialCameraNode


**属性**:

- `ECollisionChannel OcclusionChannel [Collision channel to use for the occlusion testing.]`
- `FFloatCameraParameter OcclusionSphereRadius [Radius of the sphere used for occlusion testing.]`
- `FVector3dCameraParameter OcclusionTargetOffset [Offset from the target to the occlusion trace's end.]`
- `ECameraNodeSpace OcclusionTargetOffsetSpace [The space in which to apply the occlusion target offset.]`
- `ECameraNodeOriginPosition OcclusionTargetPosition [The position of the occlusion trace's target. Objects encountered between the current
camera pose location and this target will have the transparency material applied to
them until they move out of the way.]`
- `UMaterialInterface OcclusionTransparencyMaterial [Material to apply on objects causing occlusion.]`

---

