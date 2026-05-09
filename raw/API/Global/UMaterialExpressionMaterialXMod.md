### UMaterialExpressionMaterialXMod


The remaining fraction after dividing an incoming input by a value and subtracting the integer portion.
Unlike UE FMod or Modulo expressions, Mod always returns a non-negative result, matching the interpretation of the GLSL and OSL mod() function (not fmod()).
This is computed as x - y * floor(x/y).

**属性**:

- `float32 ConstB [only used if B is not hooked up]`

---

