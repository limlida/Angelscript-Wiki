### UPhysicsSpringComponent


Note: this component is still work in progress. Uses raycast springs for simple vehicle forces
   Used with objects that have physics to create a spring down the X direction
   ie. point X in the direction you want generate spring.

**属性**:

- `ECollisionChannel SpringChannel [Strength of thrust force applied to the base object.]`
- `float32 SpringCompression [The current compression of the spring. A spring at rest will have SpringCompression 0.]`
- `float32 SpringDamping [Specifies how quickly the spring can absorb energy of a body. The higher the damping the less oscillation]`
- `float32 SpringLengthAtRest [Determines how long the spring will be along the X-axis at rest. The spring will apply 0 force on a body when it's at rest.]`
- `float32 SpringRadius [Determines the radius of the spring.]`
- `float32 SpringStiffness [Specifies how much strength the spring has. The higher the SpringStiffness the more force the spring can push on a body with.]`
- `bool bIgnoreSelf [If true, the spring will ignore all components in its own actor]`


**方法**:

- `float32 GetNormalizedCompressionScalar() const`  
  Returns the spring compression as a normalized scalar along spring direction.
0 implies spring is at rest
1 implies fully compressed
- `FVector GetSpringCurrentEndPoint() const`  
  Returns the spring current end point in world space.
- `FVector GetSpringDirection() const`  
  Returns the spring direction from start to resting point
- `FVector GetSpringRestingPoint() const`  
  Returns the spring resting point in world space.

---

