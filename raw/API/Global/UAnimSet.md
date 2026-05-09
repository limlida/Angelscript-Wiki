### UAnimSet


**属性**:

- `TArray<FName> ForceMeshTranslationBoneNames [List of bones which are ALWAYS going to use their translation from the mesh and not the animation. // Do not change private - they will go away]`
- `TArray<FName> UseTranslationBoneNames [Names of bones that should use translation from the animation, if bAnimRotationOnly is set. // Do not change private - they will go away]`
- `bool bAnimRotationOnly [Indicates that only the rotation should be taken from the animation sequence and the translation should come from the USkeletalMesh ref pose.
Note that the root bone always takes translation from the animation, even if this flag is set.
You can use the UseTranslationBoneNames array to specify other bones that should use translation with this flag set.]`

---

