### FPropertyEntry


Structure to represent a single property the user wants to bake out for a given set of materials

**属性**:

- `float32 ConstantValue [Defines the value representing this property in the final proxy material]`
- `FIntPoint CustomSize [Defines the size of the output textures for the baked out material properties]`
- `EMaterialProperty Property [Property which should be baked out]`
- `bool bUseConstantValue [Wheter or not to use Constant Value as the final 'baked out' value for the this property]`
- `bool bUseCustomSize [Whether or not to use the value of custom size for the output texture]`


**方法**:

- `FPropertyEntry& opAssign(FPropertyEntry Other)`

---

