### URadialIntMask


This function first defines a radial integer field equal to Interior-value inside a sphere / Exterior-value outside. This field will be used alongside the particle input value and the mask condition to compute the particle output value.

**属性**:

- `int ExteriorValue [If the sample distance from the center is greater than radius, the intermediate value will be set the exterior value]`
- `int InteriorValue [If the sample distance from the center is less than radius, the intermediate value will be set the interior value]`
- `FVector Position [Center position of the radial mask field]`
- `float32 Radius [Radius of the radial mask field]`
- `ESetMaskConditionType SetMaskCondition [If the mask condition is set to always the output value will be the intermediate one. If set to not interior/exterior the output value will be the intermediate one if the input is different from the interior/exterior value]`


**方法**:

- `URadialIntMask SetRadialIntMask(float32 Radius, FVector Position, int InteriorValue, int ExteriorValue, ESetMaskConditionType SetMaskConditionIn)`  
  This function first defines a radial integer field equal to Interior-value inside a sphere / Exterior-value outside. This field will be used alongside the particle input value and the mask condition to compute the particle output value.
- If Mask-condition = set-always : the particle output value will be equal to Interior-value if the particle position is inside a sphere / Exterior-value otherwise.
- If Mask-condition = merge-interior : the particle output value will be equal to Interior-value if the particle position is inside the sphere or if the particle input value is already Interior-Value / Exterior-value otherwise.
- If Mask-condition = merge-exterior : the particle output value will be equal to Exterior-value if the particle position is outside the sphere or if the particle input value is already Exterior-Value / Interior-value otherwise.
@param    Radius Radius of the radial field
@param    Position Center position of the radial field"
@param    InteriorValue If the sample distance from the center is less than radius, the intermediate value will be set the interior value
@param    ExteriorValue If the sample distance from the center is greater than radius, the intermediate value will be set the exterior value
@param    SetMaskConditionIn If the mask condition is set to always the output value will be the intermediate one. If set to not interior/exterior the output value will be the intermediate one if the input is different from the interior/exterior value

---

