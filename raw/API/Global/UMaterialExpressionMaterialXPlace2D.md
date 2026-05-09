### UMaterialExpressionMaterialXPlace2D


Transform incoming UV texture coordinates from one 2D frame of reference to another.
operationorder (integer enum): the order in which to perform the transform operations.
"0" or "SRT" performs -pivot, scale, rotate, translate, +pivot as per the original
implementation matching the behavior of certain DCC packages, and "1" or "TRS" performs
-pivot, translate, rotate, scale, +pivot which does not introduce texture shear.
Default is 0 "SRT" for backward compatibility.

**属性**:

- `uint8 ConstCoordinate [only used if Coordinates is not hooked up]`
- `float32 ConstRotationAngle [only used if RotationAngle is not hooked up]`

---

