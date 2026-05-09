### FIKFootPelvisPullDownSolver


**属性**:

- `float PelvisAdjustmentErrorTolerance [Specifies the pelvis adjustment distance error that is tolerated for each iteration of the solver

When it is detected that the pelvis adjustment distance is incrementing at a value lower or equal
to this value for each iteration, the solve will halt. Lower values will marginally increase visual
quality at the cost of performance, but may require a higher PelvisAdjustmentMaxIter to be specified

The default value of 0.01 specifies 1 centimeter of error]`
- `FVectorRK4SpringInterpolator PelvisAdjustmentInterp [Specifies the spring interpolation parameters applied during pelvis adjustment]`
- `float PelvisAdjustmentInterpAlpha [Specifies an alpha between the original and final adjusted pelvis locations
This is used to retain some degree of the original pelvis motion]`
- `float PelvisAdjustmentMaxDistance [Specifies the maximum displacement the pelvis can be adjusted relative to its original location]`
- `int PelvisAdjustmentMaxIter [Specifies the maximum number of iterations to run for the pelvis adjustment solver
Higher iterations will guarantee closer PelvisAdjustmentErrorTolerance convergence at the cost of performance]`


**方法**:

- `FIKFootPelvisPullDownSolver& opAssign(FIKFootPelvisPullDownSolver Other)`

---

