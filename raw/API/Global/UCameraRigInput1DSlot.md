### UCameraRigInput1DSlot


The base class for a node that can handle and accumulate raw player input values.

**属性**:

- `EBuiltInDoubleCameraVariable BuiltInVariable [The variable to use to blend with other input slots.]`
- `FCameraParameterClamping Clamp [Clamping of the final input value.]`
- `FDoubleCameraVariableReference CustomVariable [The variable to use to blend with other input slots.]`
- `FCameraParameterNormalization Normalize [Normalization of the final input value.]`
- `FBooleanCameraParameter RevertAxis [Whether to revert the axis.]`
- `FDoubleCameraParameter Speed [A speed, in units/seconds, to use on the input value.]`
- `bool bIsPreBlended [Whether the multiplier should be pre-blended.]`

---

