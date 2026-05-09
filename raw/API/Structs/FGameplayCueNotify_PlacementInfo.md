### FGameplayCueNotify_PlacementInfo


FGameplayCueNotify_PlacementInfo

    Specifies how the gameplay cue notify will be positioned in the world.

**属性**:

- `EGameplayCueNotify_AttachPolicy AttachPolicy [Whether to attach to the target actor or not attach.]`
- `EAttachmentRule AttachmentRule [How the transform is handled when attached.]`
- `FRotator RotationOverride [If enabled, will always spawn using rotation override.
This will also set the rotation to be absolute, so any changes to the parent's rotation will be ignored after attachment.]`
- `FVector ScaleOverride [If enabled, will always spawn using scale override.
This will also set the scale to be absolute, so any changes to the parent's scale will be ignored after attachment.]`
- `FName SocketName [Target's socket (or bone) used for location and rotation.  If "None", it uses the target's root.]`
- `bool bOverrideRotation [If enabled, will always spawn using rotation override.]`
- `bool bOverrideScale [If enabled, will always spawn using the scale override.]`


**方法**:

- `FGameplayCueNotify_PlacementInfo& opAssign(FGameplayCueNotify_PlacementInfo Other)`

---

