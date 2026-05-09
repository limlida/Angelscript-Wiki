### FHairStretchConstraint


**属性**:

- `bool ProjectStretch [Enable ther projection of the stretch constraint after the xpbd loop]`
- `bool SolveStretch [Enable the solve of the stretch constraint during the xpbd loop]`
- `float32 StretchDamping [Damping for the stretch constraint between 0 and 1]`
- `FRuntimeFloatCurve StretchScale [This curve determines how much the stretch stiffness will be scaled along each strand. 
 The X axis range is [0,1], 0 mapping the root and 1 the tip]`
- `float32 StretchStiffness [Stiffness for the stretch constraint in GPa]`


**方法**:

- `FHairStretchConstraint& opAssign(FHairStretchConstraint Other)`

---

