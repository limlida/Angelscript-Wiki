### FForceFeedbackAttenuationSettings


The struct for defining the properties used when determining attenuation for a force feedback effect

**属性**:

- `EAttenuationShape AttenuationShape [The shape of the non-custom attenuation method.]`
- `FVector AttenuationShapeExtents [The dimensions to use for the attenuation shape. Interpretation of the values differ per shape.
         Sphere  - X is Sphere Radius. Y and Z are unused
         Capsule - X is Capsule Half Height, Y is Capsule Radius, Z is unused
         Box     - X, Y, and Z are the Box's dimensions
         Cone    - X is Cone Radius, Y is Cone Angle, Z is Cone Falloff Angle]`
- `float32 ConeOffset [The distance back from the sound's origin to begin the cone when using the cone attenuation shape.]`
- `float32 ConeSphereFalloffDistance [The distance over which volume attenuation occurs for the optional sphere shape.]`
- `float32 ConeSphereRadius [An optional attenuation radius (sphere) that extends from the cone origin.]`
- `FRuntimeFloatCurve CustomAttenuationCurve [The custom volume attenuation curve to use. Value clamped at 1.0.]`
- `EAttenuationDistanceModel DistanceAlgorithm [The type of attenuation as a function of distance to use.]`
- `float32 FalloffDistance [The distance over which volume attenuation occurs.]`
- `ENaturalSoundFalloffMode FalloffMode [Whether to continue attenuating, go silent, or hold last volume value when beyond falloff bounds and
'Attenuation At Max (dB)' is set to a value greater than -60dB.
(Only for 'Natural Sound' Distance Algorithm). */]`
- `float32 dBAttenuationAtMax [The attenuation volume at the falloff distance in decibels (Only for 'Natural Sound' Distance Algorithm).]`


**方法**:

- `FForceFeedbackAttenuationSettings& opAssign(FForceFeedbackAttenuationSettings Other)`

---

