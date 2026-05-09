### FNetworkPhysicsSettingsResimulationErrorCorrection


**属性**:

- `float32 RenderInterpExponentialDecayAngularHalfLife [Overrides CVar: p.RenderInterp.ExponentialDecayAngularHalfLife -- Sets the rotational half-life time for when bApplyExponentialDecay is enabled.]`
- `float32 RenderInterpExponentialDecayLinearHalfLife [Overrides CVar: p.RenderInterp.ExponentialDecayLinearHalfLife -- Sets the positional half-life time for when bApplyExponentialDecay is enabled.]`
- `float32 RenderInterpMinimumAngularThreshold [Overrides CVar: p.RenderInterp.MinimumAngularThreshold -- When the remaining render error angle is below this we clear it, if ApplyExponentialDecay is enabled.]`
- `float32 RenderInterpMinimumLinearThreshold [Overrides CVar: p.RenderInterp.MinimumLinearThreshold -- Squared value, when the remaining render error is below this we clear it, if ApplyExponentialDecay is enabled.]`
- `float32 ResimErrorCorrectionDuration [Overrides CVar: p.RenderInterp.ErrorCorrectionDuration -- How long in seconds to apply error correction over]`
- `float32 ResimErrorDirectionalDecayMultiplier [Overrides CVar: p.RenderInterp.DirectionalDecayMultiplier -- Decay error offset in the direction that the physics object is moving, value is multiplier of projected offset direction, 0.25 means a 25 % decay of the magnitude in the direction of physics travel.Deactivate by setting to 0]`
- `float32 ResimErrorMaximumDesyncTimeBeforeSnapping [Overrides CVar: p.RenderInterp.MaximumErrorCorrectionDesyncTimeBeforeSnapping -- Time multiplied by the particles velocity to get the distance that error correction will be performed within without snapping, disable by setting a negative value
NOTE: ResimErrorMaximumDistanceBeforeSnapping will act as a lowest distance clamp.]`
- `float32 ResimErrorMaximumDistanceBeforeSnapping [Overrides CVar : p.RenderInterp.MaximumErrorCorrectionBeforeSnapping -- Maximum error correction in cm before we stop interpolating and snap to target]`
- `bool bOverrideResimErrorInterpolationSettings [Enable override for post-resimulation error correction settings during render interpolation
NOTE: This currently does not work if the experimental p.RenderInterp.ErrorVelocityCorrection CVar is set to true (false by default)]`
- `bool bRenderInterpApplyExponentialDecay [Overrides CVar: p.RenderInterp.ApplyExponentialDecay -- When enabled a post-resim error will decay exponentially (instead of linearly) based on half-life time set in ExponentialDecayLinearHalfLife and ExponentialDecayAngularHalfLife.]`


**方法**:

- `FNetworkPhysicsSettingsResimulationErrorCorrection& opAssign(FNetworkPhysicsSettingsResimulationErrorCorrection Other)`

---

