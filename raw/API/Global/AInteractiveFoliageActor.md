### AInteractiveFoliageActor


**属性**:

- `float32 FoliageDamageImpulseScale [Scales forces applied from damage events.]`
- `float32 FoliageDamping [Determines the amount of energy lost by the spring as it oscillates.
This force is similar to air friction.]`
- `float32 FoliageStiffness [Determines how strong the force that pushes toward the spring's center will be.]`
- `float32 FoliageStiffnessQuadratic [Same as FoliageStiffness, but the strength of this force increases with the square of the distance to the spring's center.
This force is used to prevent the spring from extending past a certain point due to touch and damage forces.]`
- `float32 FoliageTouchImpulseScale [Scales forces applied from touch events.]`
- `float32 MaxDamageImpulse [Clamps the magnitude of each damage force applied.]`
- `float32 MaxForce [Clamps the magnitude of combined forces applied each update.]`
- `float32 MaxTouchImpulse [Clamps the magnitude of each touch force applied.]`

---

