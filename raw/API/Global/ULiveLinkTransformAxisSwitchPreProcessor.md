### ULiveLinkTransformAxisSwitchPreProcessor


Allows to switch any axis of an incoming transform with another axis.
@note For example the Z-Axis of an incoming transform can be set to the (optionally negated) Y-Axis of the transform in UE.
@note This implies that translation, rotation and scale will be affected by switching an axis.

**属性**:

- `ELiveLinkAxis FrontAxis []`
- `FRotator OffsetOrientation []`
- `FVector OffsetPosition []`
- `ELiveLinkAxis RightAxis []`
- `ELiveLinkAxis UpAxis []`
- `bool bUseOffsetOrientation []`
- `bool bUseOffsetPosition []`

---

