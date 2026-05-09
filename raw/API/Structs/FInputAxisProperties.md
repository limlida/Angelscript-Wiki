### FInputAxisProperties


Configurable properties for control axes, used to transform raw input into game ready values.

**属性**:

- `float32 DeadZone [What the dead zone of the axis is.  For control axes such as analog sticks.]`
- `float32 Exponent [For applying curves to [0..1] axes, e.g. analog sticks]`
- `float32 Sensitivity [Scaling factor to multiply raw value by.]`
- `bool bInvert [Inverts reported values for this axis]`


**方法**:

- `FInputAxisProperties& opAssign(FInputAxisProperties Other)`

---

