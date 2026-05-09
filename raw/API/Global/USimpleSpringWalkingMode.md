### USimpleSpringWalkingMode


A walking mode that uses a critically damped spring for translation and rotation.
The strength of the critically damped spring is set via smoothing times (separate for translation and rotation)

**属性**:

- `float32 FacingSmoothingTime`
- `float32 VelocityDeadzoneThreshold [Below this speed we set velocity to 0]`
- `float32 VelocitySmoothingTime`

---

