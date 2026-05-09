### UFractureRadialSettings


**属性**:

- `float32 AngleOffset [Angle offset at each radial step (in degrees)]`
- `float32 AngularNoise [Amount of global variation to apply to each angular step (in degrees)]`
- `int AngularSteps [Number of angular steps]`
- `float32 AngularVariability [Amount to randomly displace each Voronoi site in angle (in degrees)]`
- `float32 AxialVariability [Amount to randomly displace each Voronoi site in the direction of the rotation axis (in cm)]`
- `FVector Center [Center of generated pattern. Only used when "Use Gizmo" is disabled]`
- `FVector Normal [Normal to plane in which sites are generated. Only used when "Use Gizmo" is disabled]`
- `float32 RadialMinStep [Minimum radial separation between any two voronoi points (in cm)]`
- `float32 RadialNoise [Amount of global variation to apply to each radial step (in cm)]`
- `float32 RadialStepExponent [Radial steps will follow a distribution based on this exponent, i.e., Pow(distance from center, RadialStepExponent)]`
- `int RadialSteps [Number of radial steps]`
- `float32 RadialVariability [Amount to randomly displace each Voronoi site radially (in cm)]`
- `float32 Radius [Pattern radius (in cm)]`

---

