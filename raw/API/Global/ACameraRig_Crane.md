### ACameraRig_Crane


A simple rig for simulating crane-like camera movements.

**属性**:

- `float32 CraneArmLength [Controls the length of the crane arm.]`
- `USceneComponent CraneCameraMount [Component to define the attach point for cameras.]`
- `float32 CranePitch [Controls the pitch of the crane arm.]`
- `USceneComponent CranePitchControl [Component to control Pitch.]`
- `float32 CraneYaw [Controls the yaw of the crane arm.]`
- `USceneComponent CraneYawControl [Component to control Yaw.]`
- `USceneComponent TransformComponent [Root component to give the whole actor a transform.]`
- `bool bLockMountPitch [Lock the mount pitch so that an attached camera is locked and pitched in the direction of the crane arm]`
- `bool bLockMountYaw [Lock the mount yaw so that an attached camera is locked and oriented in the direction of the crane arm]`

---

