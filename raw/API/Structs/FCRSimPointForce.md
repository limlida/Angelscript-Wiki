### FCRSimPointForce


**属性**:

- `float32 Coefficient [The strength of the force (a multiplier for direction based forces)]`
- `ECRSimPointForceType ForceType [The type of force.]`
- `FVector Vector [The point / direction to use for the force.
This is a direction for direction based forces,
while this is a position for attractor / repel based forces.]`
- `bool bNormalize [If set to true the input vector will be normalized.]`


**方法**:

- `FCRSimPointForce& opAssign(FCRSimPointForce Other)`

---

