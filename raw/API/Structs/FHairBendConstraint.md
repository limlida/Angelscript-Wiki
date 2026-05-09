### FHairBendConstraint


**属性**:

- `float32 BendDamping [Damping for the bend constraint between 0 and 1]`
- `FRuntimeFloatCurve BendScale [This curve determines how much the bend stiffness will be scaled along each strand. 
 The X axis range is [0,1], 0 mapping the root and 1 the tip]`
- `float32 BendStiffness [Stiffness for the bend constraint in GPa]`
- `bool ProjectBend [Enable ther projection of the bend constraint after the xpbd loop]`
- `bool SolveBend [Enable the solve of the bend constraint during the xpbd loop]`


**方法**:

- `FHairBendConstraint& opAssign(FHairBendConstraint Other)`

---

