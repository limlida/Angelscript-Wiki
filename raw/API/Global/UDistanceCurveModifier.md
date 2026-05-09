### UDistanceCurveModifier


Extracts traveling distance information from root motion and bakes it to a curve.
A negative value indicates distance remaining to a stop or pivot point.
A positive value indicates distance traveled from a start point or from the beginning of the clip.

**属性**:

- `EDistanceCurve_Axis Axis [Axes to calculate the distance value from.]`
- `FName CurveName [Name for the generated curve.]`
- `int SampleRate [Rate used to sample the animation.]`
- `float32 StopSpeedThreshold [Root motion speed must be below this threshold to be considered stopped.]`
- `bool bStopAtEnd [Root motion is considered to be stopped at the clip's end]`

---

