### UMaterialExpressionMaterialXPlus


Blend nodes take two 1-4 channel inputs and apply the same operator to all channels.
Blend nodes support an optional float input mix , which can be used
to mix the original B value with the result of the blend operation.
Operation: A + B
Result: Lerp(B, A + B, Alpha)

**属性**:

- `float32 ConstAlpha [only used if Alpha is not hooked up]`

---

