### UDrawPolyPathProperties


**属性**:

- `float32 CornerRadius [Radius of the corner arcs, as a fraction of path width. This is only available if Rounded Corners is enabled.]`
- `float32 ExtrudeHeight [Extrusion distance when using the Fixed extrude modes; also shows the distance in Interactive extrude modes]`
- `EDrawPolyPathExtrudeMode ExtrudeMode [If and how the drawn path gets extruded]`
- `int RadialSlices [Number of radial subdivisions for rounded corners]`
- `EDrawPolyPathRadiusMode RadiusMode [How the rounded corner radius gets set]`
- `float32 RampStartRatio [Height of the start of the ramp as a fraction of the Extrude Height property]`
- `float32 Width [Width of the drawn path when using Fixed width mode; also shows the width in Interactive width mode]`
- `EDrawPolyPathWidthMode WidthMode [How the drawn path width gets set]`
- `bool bRoundedCorners [Use arc segments instead of straight lines in corners]`
- `bool bSinglePolyGroup [If true, all quads on the path will belong to the same polygon. If false, each quad gets its own polygon.]`

---

