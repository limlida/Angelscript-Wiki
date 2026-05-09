### FHairLODSettings


**属性**:

- `float32 AngularThreshold [Max angular difference between adjacents vertices to remove vertices during simplification, in degrees]`
- `EGroomBindingType BindingType [Defines the type of attachment]`
- `float32 CurveDecimation [Reduce the number of hair strands in a uniform manner]`
- `EGroomGeometryType GeometryType [Defines the type of geometry used by this LOD (Strands, Cards, or Meshes)]`
- `EGroomOverrideType GlobalInterpolation [Global interpolation]`
- `float32 ScreenSize [Screen size at which this LOD should be enabled]`
- `EGroomOverrideType Simulation [Groom simulation]`
- `float32 ThicknessScale [Scales the hair Strands radius. This can be used for manually compensating the reduction of curves.]`
- `float32 VertexDecimation [Reduce the number of points for each hair strands]`
- `bool bVisible [If disable, the hair strands won't be rendered]`


**方法**:

- `FHairLODSettings& opAssign(FHairLODSettings Other)`

---

