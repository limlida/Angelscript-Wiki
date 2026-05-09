### UPhysicalMaterial


Physical materials are used to define the response of a physical object when interacting dynamically with the world.

**属性**:

- `float32 BaseFrictionImpulse [A friction (positional) impulse of at least this magnitude may be applied,
              regardless the normal force. This is analogous to adding only the lateral part of a
              "stickiness" to a material]`
- `FPhysicalMaterialDamageModifier DamageModifier`
- `FLinearColor DebugColor [Color used to represent this material in certain debug views (e.g. landscape collision)]`
- `float32 Density [Used with the shape of the object to calculate its mass properties. The higher the number, the heavier the object. g per cubic cm.]`
- `float32 Friction [Friction value of surface, controls how easily things can slide on this surface (0 is frictionless, higher values increase the amount of friction)]`
- `EFrictionCombineMode FrictionCombineMode [Friction combine mode, controls how friction is computed for multiple materials.]`
- `float32 RaiseMassToPower [Used to adjust the way that mass increases as objects get larger. This is applied to the mass as calculated based on a 'solid' object.
In actuality, larger objects do not tend to be solid, and become more like 'shells' (e.g. a car is not a solid piece of metal).
Values are clamped to 1 or less.]`
- `float32 Restitution [Restitution or 'bounciness' of this surface, between 0 (no bounce) and 1 (outgoing velocity is same as incoming).]`
- `EFrictionCombineMode RestitutionCombineMode [Restitution combine mode, controls how restitution is computed for multiple materials.]`
- `float32 SleepAngularVelocityThreshold [How low the angular velocity can be before solver puts body to sleep.]`
- `int SleepCounterThreshold [How many ticks we can be under thresholds for before solver puts body to sleep.]`
- `float32 SleepLinearVelocityThreshold [How low the linear velocity can be before solver puts body to sleep.]`
- `EPhysicalMaterialSoftCollisionMode SoftCollisionMode [For enable soft collision shell thickness mode]`
- `float32 SoftCollisionThickness [Thickness of the layer just inside the collision shape in which contact is considered "soft".
              The units depend on SoftCollisionMode]`
- `float32 StaticFriction [Static Friction value of surface, controls how easily things can slide on this surface (0 is frictionless, higher values increase the amount of friction)]`
- `FPhysicalMaterialStrength Strength`
- `EPhysicalSurface SurfaceType [To edit surface type for your project, use ProjectSettings/Physics/PhysicalSurface section]`
- `bool bOverrideFrictionCombineMode [If set we will use the FrictionCombineMode of this material, instead of the FrictionCombineMode found in the project settings.]`
- `bool bOverrideRestitutionCombineMode [If set we will use the RestitutionCombineMode of this material, instead of the RestitutionCombineMode found in the project settings.]`

---

