### UCameraRigInput2DSlot


The base class for a node that can handle and accumulate raw player input values.

**属性**:

- `EBuiltInVector2dCameraVariable BuiltInVariable [The variable to use to blend with other input slots.]`
- `FCameraParameterClamping ClampX [Clamping of the final input value.]`
- `FCameraParameterClamping ClampY [Clamping of the final input value.]`
- `FVector2dCameraVariableReference CustomVariable [The variable to use to blend with other input slots.]`
- `FCameraParameterNormalization NormalizeX [Normalization of the final input value.]`
- `FCameraParameterNormalization NormalizeY [Normalization of the final input value.]`
- `FBooleanCameraParameter RevertAxisX [Whether to revert the X axis.]`
- `FBooleanCameraParameter RevertAxisY [Whether to revert the Y axis.]`
- `FVector2dCameraParameter Speed [A speed, in units/seconds, to use on the input value.]`
- `bool bIsPreBlended [Whether parameters such as speed should be pre-blended.]`

---

