### FIKRetargetRootMotionOpSettings


**属性**:

- `FTransform GlobalOffset [A manual offset to apply in global space to the root bone.]`
- `int LODThreshold [The maximum LOD that this Op is allowed to run at.
For example if you have LODThreshold of 2, the Op will run until LOD 2 (based on 0 index). When the component LOD becomes 3, it will stop running.
A value of -1 forces the Op to execute at all LOD levels. Default is -1.]`
- `ERootMotionHeightSource RootHeightSource [How to set the height of the root bone.
Copy Height From Source: copies the height of the root bone on the source skeleton's root bone.
Snap To Ground: sets the root bone height to the ground plane (Z=0).]`
- `ERootMotionSource RootMotionSource [Where to copy the root motion from.
Copy From Source Root: copies the motion from the source root bone, but scales it according to relative height difference.
Generate From Target Pelvis: uses the retargeted Pelvis motion to generate root motion.
NOTE: Generating root motion from the Pelvis]`
- `FBoneReference SourceRoot [The root of the source skeleton.]`
- `FBoneReference TargetPelvis [The pelvis of the target skeleton. Only used when "Root Motion Source" is set to target pelvis.]`
- `FBoneReference TargetRoot [The root of the target skeleton.]`
- `bool bMaintainOffsetFromPelvis [Applies only when generating root motion from the Pelvis.
Maintains the offset between the root and pelvis as recorded in the target retarget pose.
If false, the root bone is placed directly under the Pelvis bone.]`
- `bool bPropagateToNonRetargetedChildren [Will transform all children of the target root that are not themselves part of a retarget chain.]`
- `bool bRotateWithPelvis [Applies only when generating root motion from the Pelvis.
When true, the applied offset will be rotated by the Pelvis.
(NOTE: This may cause unwanted rotations, for example if Pelvis Yaw is animated.)]`


**方法**:

- `FIKRetargetRootMotionOpSettings& opAssign(FIKRetargetRootMotionOpSettings Other)`

---

