### FCRSimSoftCollision


**属性**:

- `float32 Coefficient [The strength of the collision force]`
- `ERigVMAnimEasingType FalloffType [The type of falloff to use]`
- `float32 MaximumDistance [The maximum distance for the collision.
If this is equal or lower than the minimum there's no falloff.
For a cone shape this represents the maximum angle in degrees.]`
- `float32 MinimumDistance [The minimum distance for the collision.
If this is equal or higher than the maximum there's no falloff.
For a cone shape this represents the minimum angle in degrees.]`
- `ECRSimSoftCollisionType ShapeType [The type of collision shape]`
- `FTransform Transform [The world / global transform of the collisoin]`
- `bool bInverted [If set to true the collision volume will be inverted]`


**方法**:

- `FCRSimSoftCollision& opAssign(FCRSimSoftCollision Other)`

---

