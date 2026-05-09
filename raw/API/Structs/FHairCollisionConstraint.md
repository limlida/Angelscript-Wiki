### FHairCollisionConstraint


**属性**:

- `float32 CollisionRadius [Radius that will be used for the collision detection against the physics asset]`
- `FIntVector GridDimension [Dimension of the grid used to compute the viscosity force]`
- `float32 KineticFriction [Kinetic friction used for collision against the physics asset]`
- `bool ProjectCollision [Enable ther projection of the collision constraint after the xpbd loop]`
- `FRuntimeFloatCurve RadiusScale [This curve determines how much the collision radius will be scaled along each strand. 
 The X axis range is [0,1], 0 mapping the root and 1 the tip]`
- `bool SolveCollision [Enable the solve of the collision constraint during the xpbd loop]`
- `float32 StaticFriction [Static friction used for collision against the physics asset]`
- `float32 StrandsViscosity [Viscosity parameter between 0 and 1 that will be used for self collision]`


**方法**:

- `FHairCollisionConstraint& opAssign(FHairCollisionConstraint Other)`

---

