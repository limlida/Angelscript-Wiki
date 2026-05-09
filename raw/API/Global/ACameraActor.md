### ACameraActor


A CameraActor is a camera viewpoint that can be placed in a level.

**属性**:

- `EAutoReceiveInput AutoActivateForPlayer [Specifies which player controller, if any, should automatically use this Camera when the controller is active.]`
- `UCameraComponent CameraComponent [The camera component for this camera]`
- `USceneComponent SceneComponent`


**方法**:

- `int GetAutoActivatePlayerIndex() const`  
  Returns index of the player for whom we auto-activate, or INDEX_NONE (-1) if disabled.

---

