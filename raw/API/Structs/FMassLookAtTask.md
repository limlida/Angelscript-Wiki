### FMassLookAtTask


**属性**:

- `float32 CustomInterpolationSpeed [Look at custom interpolation speed used when 'InterpolationSpeed = EMassLookAtInterpolationSpeed::Custom'
(not used by the LookAt processor but can be forwarded to the animation system).]`
- `EMassLookAtInterpolationSpeed InterpolationSpeed [Look at interpolation speed (not used by the LookAt processor but can be forwarded to the animation system).]`
- `EMassLookAtMode LookAtMode [Look At Mode]`
- `FName Name [Name of the node.]`
- `FMassLookAtPriority Priority [Look At Priority]`
- `EMassLookAtGazeMode RandomGazeMode [Random gaze Mode]`
- `uint8 RandomGazePitchVariation [Random gaze pitch angle added to the look direction determined by the look at mode.]`
- `uint8 RandomGazeYawVariation [Random gaze yaw angle added to the look direction determined by the look at mode.]`
- `bool bRandomGazeEntities [If true, allow random gaze to look at other entities too.]`


**方法**:

- `FMassLookAtTask& opAssign(FMassLookAtTask Other)`

---

