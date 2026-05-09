### FScalableFloat


Generic numerical value in the form Value * Curve[Level]

**属性**:

- `FCurveTableRowHandle Curve [Curve that is evaluated at a specific level. If found, it is multipled by Value]`
- `FDataRegistryType RegistryType [Name of Data Registry containing curve to use. If set the RowName inside Curve is used as the item name]`
- `float32 Value [Raw value, is multiplied by curve]`


**方法**:

- `FScalableFloat& opAssign(FScalableFloat Other)`

---

