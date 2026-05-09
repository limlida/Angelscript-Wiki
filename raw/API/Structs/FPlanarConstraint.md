### FPlanarConstraint


Encapsulates info about constraining movement to a plane, such as in a side-scroller

**属性**:

- `FVector PlaneConstraintNormal [The normal or axis of the plane that constrains movement, if bConstrainToPlane is enabled.
If for example you wanted to constrain movement to the X-Z plane (so that Y cannot change), the normal would be set to X=0 Y=1 Z=0.
It is normalized once the component is registered with the game world.]`
- `FVector PlaneConstraintOrigin [The origin of the plane that constrains movement, if plane constraint is enabled.]`
- `bool bConstrainToPlane [If true, movement will be constrained to a plane.]`


**方法**:

- `FPlanarConstraint& opAssign(FPlanarConstraint Other)`

---

